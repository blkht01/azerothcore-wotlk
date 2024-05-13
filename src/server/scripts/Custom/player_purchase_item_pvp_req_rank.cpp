#include "ScriptMgr.h"
#include "Player.h"
#include "Item.h"

class HonorRankCheck : public PlayerScript
{
public:
    HonorRankCheck() : PlayerScript("HonorRankCheck") {}

    void OnBeforeBuyItemFromVendor(Player* player, ObjectGuid vendorGuid, uint32 vendorSlot, uint32& itemId, uint8 count, uint8 bag, uint8 slot) override
    {
        const ItemTemplate* itemTemplate = sObjectMgr->GetItemTemplate(itemId);
        if (!itemTemplate)
            return; // No item template found.

        // Retrieve the required honor rank from the item template
        uint32 requiredHonorRank = itemTemplate->RequiredHonorRank;

        // Determine the player's highest title rank
        uint32 playerHonorRank = GetHighestPvPTitleRank(player);

        // Check if the player's rank meets the required rank
        if (playerHonorRank < requiredHonorRank)
        {
            // Player does not meet the required honor rank, send error message
            player->SendBuyError(BUY_ERR_RANK_REQUIRE, nullptr, itemId, 0);
        }
    }

    uint32 GetHighestPvPTitleRank(Player* player)
    {
        uint32 highestRank = 0;
        // Alliance titles 1-14, Horde titles 15-28
        for (uint32 rank = 1; rank <= 28; ++rank)
        {
            if (player->HasTitle(rank))
            {
                // Calculate rank based on title ID
                if (rank <= 14)
                    highestRank = rank;  // Alliance rank
                else if (rank >= 15)
                    highestRank = rank - 14;  // Adjusted Horde rank
            }
        }
        return highestRank;
    }
};

// Add this to your script loader to load the custom script
void AddSC_HonorRankCheck()
{
    new HonorRankCheck();
}
