#include "Player.h"
#include "ScriptMgr.h"


class player_learn_unlearn_metamorphosis_spells : public PlayerScript {

public: player_learn_unlearn_metamorphosis_spells() : PlayerScript("player_learn_unlearn_metamorphosis_spells") {}

      void OnLearnSpell(Player* player, uint32 spellId)
      {
	  // metamorphosis
          if (spellId == 47241)
          {
              /* Challenging Howl */
              player->learnSpell(59671);
              /* Demon Charge */
              player->learnSpell(54785);
	      /* Immolation Aura */
	      player->learnSpell(50589);
              /* Shadow Cleave */
	      player->learnSpell(50581);
          }
      }

      void OnForgotSpell(Player* player, uint32 spellId)
      {	  
	  // metamorphosis
          if (spellId == 47241)
          {
              /* Challenging Howl */
              player->removeSpell(59671, SPEC_MASK_ALL, false);
              /* Demon Charge */
              player->removeSpell(54785, SPEC_MASK_ALL, false);
              /* Immolation Aura */ 
              player->removeSpell(50589, SPEC_MASK_ALL, false);
              /* Shadow Cleave */
              player->removeSpell(50581, SPEC_MASK_ALL, false);
          }
      }
};

void ADDSC_player_learn_unlearn_metamorphosis_spells() {
    new player_learn_unlearn_metamorphosis_spells();
}
