/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// This is where scripts' loading functions should be declared:
// void MyExampleScript()

// The name of this function should match:
// void Add${NameOfDirectory}Scripts()
void ADDSC_player_unlearn_titan();
void ADDSC_player_unlearn_felguard();
//void ADDSC_honor_rank_check();
void ADDSC_player_learn_trickster_spells();
void ADDSC_player_learn_unlearn_metamorphosis_spells();

void AddCustomScripts()
{
    ADDSC_player_unlearn_titan();
    ADDSC_player_unlearn_felguard();
   // ADDSC_honor_rank_check();
    ADDSC_player_learn_trickster_spells();
    ADDSC_player_learn_unlearn_metamorphosis_spells();
}
