/* Shared
 * Author: Methma
 * Creation date: 12/9/2024
 */
MACHINE
    Shared
    
SETS
    GAME_STATE ={Ongoing, Both_players_still_need_to_deploy, Game_Over_Player2_won, Game_Over_Player1_won};
    PLAYERS = {Player1, Player2}    
    
CONSTANTS
    xx,
    yy,
    grid_size,
    grid
    
PROPERTIES
    grid_size = 10 &
    xx = 1..grid_size &
    yy = 1..grid_size &
    grid = xx*yy   

END
