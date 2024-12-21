#include "ScriptMgr.h"
#include "Player.h"
#include "Creature.h"
#include "Spell.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "ObjectAccessor.h"
#include "WorldSession.h"

const uint32 BANK_NPC_ENTRY = 19318; // Banker NPC entry
const uint32 INVISIBILITY_AURA_ID = 37803; // 100% invisibility aura spell ID

class spell_bank_beacon : public SpellScriptLoader
{
public:
    spell_bank_beacon() : SpellScriptLoader("spell_bank_beacon") {}

    class spell_bank_beacon_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_bank_beacon_SpellScript);

        void HandleDummyEffect(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            Unit* caster = GetCaster();
            Player* player = caster ? caster->ToPlayer() : nullptr;

            if (!player)
                return;

            // Search for nearby bank and bank NPCs
            std::list<Creature*> bankers;
            float searchRange = 5.0f;

            player->GetCreaturesWithEntryInRange(bankers, searchRange, BANK_NPC_ENTRY);

            if (!bankers.empty())
            {
                // Open bank using the first found bank or banker NPC
                Creature* banker = *bankers.begin();
                if (banker)
                {
                    player->GetSession()->SendShowBank(banker->GetGUID());
                    return;
                }
            }

            // No bank or bank NPC found, spawn one temporarily
            float x, y, z, o;
            player->GetPosition(x, y, z, o);

            Creature* spawnedBanker = player->SummonCreature(BANK_NPC_ENTRY, x, y, z, o, TEMPSUMMON_TIMED_DESPAWN, 120000);
            if (spawnedBanker)
            {
                // Apply 100% invisibility aura to the NPC
                spawnedBanker->AddAura(INVISIBILITY_AURA_ID, spawnedBanker);

                // Make the NPC follow the player, to prevent spam spawning creatures
                spawnedBanker->GetMotionMaster()->MoveFollow(player, 1.0f, M_PI / 2); // 1.0f = follow distance, M_PI/2 = offset angle

                // Show bank UI
                player->GetSession()->SendShowBank(spawnedBanker->GetGUID());
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_bank_beacon_SpellScript::HandleDummyEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_bank_beacon_SpellScript();
    }
};

// Register the spell script
void ADDSC_spell_bank_beacon()
{
    new spell_bank_beacon();
}

