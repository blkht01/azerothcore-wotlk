#include "ScriptMgr.h"
#include "SpellScript.h"
#include "Player.h"
#include "ObjectAccessor.h"

class spell_buddy_jump : public SpellScriptLoader
{
public:
    spell_buddy_jump() : SpellScriptLoader("spell_buddy_jump") {}

    class spell_buddy_jump_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_buddy_jump_SpellScript);

        void HandleTeleportToTarget(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(effIndex);

            Unit* caster = GetCaster();
            if (!caster || !caster->IsPlayer())
                return;

            Player* playerCaster = caster->ToPlayer();

            Unit* target = GetHitUnit();
            if (!target || !target->IsPlayer())
            {
                playerCaster->GetSession()->SendNotification("No valid target selected.");
                return;
            }

            Player* targetPlayer = target->ToPlayer();

            if (playerCaster->GetGUID() == targetPlayer->GetGUID())
            {
                playerCaster->GetSession()->SendNotification("You cannot teleport to yourself.");
                return;
            }

            // Directly teleport caster to the target player's location
            if (!playerCaster->TeleportTo(
                    targetPlayer->GetMapId(),
                    targetPlayer->GetPositionX(),
                    targetPlayer->GetPositionY(),
                    targetPlayer->GetPositionZ() + 0.25f, // Slight offset
                    targetPlayer->GetOrientation()))
            {
                playerCaster->GetSession()->SendNotification("Teleport failed. Could not validate target location.");
            }
            else
            {
                playerCaster->GetSession()->SendNotification("You have been teleported to %s.", targetPlayer->GetName().c_str());
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_buddy_jump_SpellScript::HandleTeleportToTarget, EFFECT_0, SPELL_EFFECT_SUMMON_PLAYER);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_buddy_jump_SpellScript();
    }
};

void ADDSC_spell_buddy_jump()
{
    new spell_buddy_jump();
}
