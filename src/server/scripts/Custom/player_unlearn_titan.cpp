#include "ScriptMgr.h"
#include "Player.h"
#include "GameEventMgr.h"

class player_unlearn_titan : public PlayerScript {

public: player_unlearn_titan() : PlayerScript("player_unlearn_titan") {}

      void OnForgotSpell(Player* player, uint32 spellId)
      {
          if (spellId == 46917) // Titan's Grip
          {
              // Set the boolean for Titan's Grip to false
              player->SetCanTitanGrip(false);
              player->AutoUnequipOffhandIfNeed();
          }
      }
};

void ADDSC_player_unlearn_titan() {
    new player_unlearn_titan();
}