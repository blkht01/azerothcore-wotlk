#include "CreatureScript.h"
#include "Pet.h"
#include "Player.h"
#include "SpellAuraEffects.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "SpellScriptLoader.h"
#include "TemporarySummon.h"

class player_unlearn_felguard : public PlayerScript {

public: player_unlearn_felguard() : PlayerScript("player_unlearn_felguard") {}

      void OnForgotSpell(Player * player, uint32 spellId)
      {
          // Summon Felguard spell
          if (spellId == 30146)
          {
              if (Pet* pet = player->GetPet())
              {
                  if (pet->GetEntry() == NPC_FELGUARD)
                  {
                      pet->Remove(PET_SAVE_NOT_IN_SLOT);
                  }
              }
          }
      }
};

void ADDSC_player_unlearn_felguard() {
    new player_unlearn_felguard();
}
