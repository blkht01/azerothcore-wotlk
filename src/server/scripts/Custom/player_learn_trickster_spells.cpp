#include "Player.h"
#include "ScriptMgr.h"


class player_learn_trickster_spells : public PlayerScript {

public: player_learn_trickster_spells() : PlayerScript("player_learn_trcikster_spells") {}

      void OnLearnSpell(Player* player, uint32 spellId)
      {
          if (spellId == 100006)
          {
              /* Dirty Tricks */
              player->learnSpell(100008);
              /* Plunder Armor */
              player->learnSpell(100009);
          }
      }

      void OnForgotSpell(Player* player, uint32 spellId)
      {
          if (spellId == 100006)
          {
              /* Dirty Tricks */
              player->removeSpell(100008, SPEC_MASK_ALL, false);
              /* Plunder Armor */
              player->removeSpell(100009, SPEC_MASK_ALL, false);
          }
      }
};

void ADDSC_player_learn_trickster_spells() {
    new player_learn_trickster_spells();
}
