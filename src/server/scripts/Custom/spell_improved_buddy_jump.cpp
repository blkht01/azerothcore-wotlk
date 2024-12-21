#include "ScriptMgr.h"
#include "Player.h"
#include "SpellAuraEffects.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "Spell.h"

class spell_improved_buddy_jump : public AuraScript
{
    PrepareAuraScript(spell_improved_buddy_jump);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ 100104 });
    }

    void HandleApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* owner = GetOwner()->ToUnit();
        if (!owner || !owner->IsPlayer())
            return;

        const uint32 buddyJumpSpellId = 100097; // Buddy Jump Spell ID
        int32 cooldownReduction = -30 * 60 * 1000; // Reduce cooldown by 30 minutes

        SpellCooldownOverride cooldownOverride = sSpellMgr->GetSpellCooldownOverride(buddyJumpSpellId);
        cooldownOverride.RecoveryTime += cooldownReduction; // Apply cooldown reduction
    }

    void HandleRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* owner = GetOwner()->ToUnit();
        if (!owner || !owner->IsPlayer())
            return;

        const uint32 buddyJumpSpellId = 100097; // Buddy Jump Spell ID
        int32 cooldownReduction = -30 * 60 * 1000; // Revert cooldown reduction

        SpellCooldownOverride cooldownOverride = sSpellMgr->GetSpellCooldownOverride(buddyJumpSpellId);
        cooldownOverride.RecoveryTime -= cooldownReduction; // Revert cooldown reduction
    }

    void Register() override
    {
        AfterEffectApply += AuraEffectApplyFn(spell_improved_buddy_jump::HandleApply, EFFECT_0, SPELL_AURA_ADD_FLAT_MODIFIER, AURA_EFFECT_HANDLE_REAL);
        AfterEffectRemove += AuraEffectRemoveFn(spell_improved_buddy_jump::HandleRemove, EFFECT_0, SPELL_AURA_ADD_FLAT_MODIFIER, AURA_EFFECT_HANDLE_REAL);
    }
};

void ADDSC_spell_improved_buddy_jump()
{
    RegisterSpellScript(spell_improved_buddy_jump);
}
