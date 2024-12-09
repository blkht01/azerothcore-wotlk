#include "ScriptMgr.h"

class player_buddy_jump : public PlayerScript
{
public:
    player_buddy_jump() : PlayerScript("player_buddy_jump") {}
    // No functionality, just a placeholder
};

void AddSC_player_buddy_jump()
{
    new player_buddy_jump();
}
