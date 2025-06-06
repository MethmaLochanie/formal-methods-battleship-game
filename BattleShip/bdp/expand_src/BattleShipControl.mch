/* BattleShipControl
 * Author: Methma
 * Creation date: 12/16/2024
 */
MACHINE
    BattleShipControl

SEES
    Shared

ABSTRACT_VARIABLES
    game_state

INVARIANT
    game_state : GAME_STATE

INITIALISATION
    game_state := Both_players_still_need_to_deploy

OPERATIONS

    status <-- gameStatus =
    BEGIN
        status := game_state
    END ;

    updateGameStatus ( new_state ) =
    PRE
        new_state : GAME_STATE
    THEN
        game_state := new_state
    END
END
