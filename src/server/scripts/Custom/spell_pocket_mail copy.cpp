#include "ScriptMgr.h"
#include "Player.h"
#include "Creature.h"
#include "Spell.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "ObjectAccessor.h"
#include "WorldSession.h"

const uint32 MAIL_NPC_ENTRY = 400197; // Mailbox NPC entry

class spell_show_mailbox : public SpellScriptLoader
{
public:
    spell_show_mailbox() : SpellScriptLoader("spell_show_mailbox") {}

    class spell_show_mailbox_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_show_mailbox_SpellScript);

        void HandleDummyEffect(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            Unit* caster = GetCaster();
            Player* player = caster ? caster->ToPlayer() : nullptr;

            if (!player)
                return;

            // Search for nearby mailboxes
            std::list<Creature*> mailboxes;
            float searchRange = 5.0f;

            player->GetCreaturesWithEntryInRange(mailboxes, searchRange, MAIL_NPC_ENTRY);

            if (!mailboxes.empty())
            {
                // Open mailbox using the first found mailbox NPC
                Creature* mailbox = *mailboxes.begin();
                if (mailbox)
                {
                    player->GetSession()->SendShowMailBox(mailbox->GetGUID());
                    return;
                }
            }

            // No mailbox found, spawn one temporarily
            float x, y, z, o;
            player->GetPosition(x, y, z, o);

            Creature* spawnedMailbox = player->SummonCreature(MAIL_NPC_ENTRY, x, y, z, o, TEMPSUMMON_TIMED_DESPAWN, 120000);
            if (spawnedMailbox)
            {
                // Show mailbox UI for spawned NPC
                player->GetSession()->SendShowMailBox(spawnedMailbox->GetGUID());
            }
            else
            {
                player->GetSession()->SendNotification("Unable to summon a mailbox at this time.");
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_show_mailbox_SpellScript::HandleDummyEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_show_mailbox_SpellScript();
    }
};

// Register the spell script
void ADDSC_show_mailbox_spell()
{
    new spell_show_mailbox();
}

