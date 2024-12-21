#include "ScriptMgr.h"
#include "Player.h"
#include "Creature.h"
#include "Spell.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "ObjectAccessor.h"
#include "WorldSession.h"

const uint32 AUCTION_NPC_ENTRY = 8719; // Auctioneer NPC entry
const uint32 INVISIBILITY_AURA_ID = 37803; // 100% invisibility aura spell ID

class spell_mobile_auction : public SpellScriptLoader
{
public:
    spell_mobile_auction() : SpellScriptLoader("spell_mobile_auction") {}

    class spell_mobile_auction_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_mobile_auction_SpellScript);

        void HandleDummyEffect(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            Unit* caster = GetCaster();
            Player* player = caster ? caster->ToPlayer() : nullptr;

            if (!player)
                return;

            // Search for nearby auctioneer NPCs
            std::list<Creature*> auctioneers;
            float searchRange = 5.0f;

            player->GetCreaturesWithEntryInRange(auctioneers, searchRange, AUCTION_NPC_ENTRY);

            if (!auctioneers.empty())
            {
                // Open auction UI using the first found auctioneer NPC
                Creature* auctioneer = *auctioneers.begin();
                if (auctioneer)
                {
                    // Show auction UI
                    player->GetSession()->SendAuctionHello(auctioneer->GetGUID(), auctioneer);
                    return;
                }
            }

            // No auctioneer NPC found, spawn one temporarily
            float x, y, z, o;
            player->GetPosition(x, y, z, o);

            Creature* spawnedAuctioneer = player->SummonCreature(AUCTION_NPC_ENTRY, x, y, z, o, TEMPSUMMON_TIMED_DESPAWN, 120000);
            if (spawnedAuctioneer)
            {
                // Apply 100% invisibility aura to the NPC
                spawnedAuctioneer->AddAura(INVISIBILITY_AURA_ID, spawnedAuctioneer);

                // Make the NPC follow the player, to prevent spam spawning creatures
                spawnedAuctioneer->GetMotionMaster()->MoveFollow(player, 1.0f, M_PI / 2); // 1.0f = follow distance, M_PI/2 = offset angle

                // Show auction UI
                player->GetSession()->SendAuctionHello(spawnedAuctioneer->GetGUID(), spawnedAuctioneer);
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_mobile_auction_SpellScript::HandleDummyEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_mobile_auction_SpellScript();
    }
};

// Register the spell script
void ADDSC_spell_mobile_auction()
{
    new spell_mobile_auction();
}

