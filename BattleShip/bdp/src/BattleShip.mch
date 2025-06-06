/* BattleShip
 * Author: Methma
 * Creation date: 12/10/2024
 */

MACHINE
    BattleShip

SEES
    Shared

INCLUDES
    Players , BattleShipControl

PROMOTES
    shipsLeft , shipLocations , shotsTaken , gameStatus

ABSTRACT_VARIABLES
    onGoingPlayer , targetHit

INVARIANT
    onGoingPlayer : PLAYERS &
    targetHit : TARGET_STATE

INITIALISATION
    onGoingPlayer := Player1 ||
    targetHit := Miss














































OPERATIONS

    currentTurn <-- currentPlayer =
    PRE
        game_state = Ongoing
    THEN
        currentTurn := current_player
    END ;

    gameRestart =
    PRE
        ( player2_fleet = {} or  player1_fleet = {} ) & ( game_state = Game_Over_Player2_won or game_state = Game_Over_Player1_won )
    THEN
        resetPlayer ||
        updateGameStatus ( Both_players_still_need_to_deploy )
    END ;

    report <-- deployFleet ( player , shipPositions ) =
    PRE
        player : PLAYERS &
        shipPositions <: grid &
        card ( shipPositions ) = fleet_size &
        ( game_state = Both_players_still_need_to_deploy ) &
        ( ( player = Player1 => player1_fleet = {} ) & ( player = Player2 => player2_fleet = {} ) )
    THEN
        report <-- startDeployFleet ( player , shipPositions ) ||
        IF
            player = Player1
        THEN
            IF
                player2_fleet /= {}
            THEN
                updateGameStatus ( Ongoing )
            END
        ELSIF
            player1_fleet /= {}
        THEN
            updateGameStatus ( Ongoing )
        END
    END ;

    result <-- playerShoots ( target ) =
    PRE
        target : grid &
        game_state = Ongoing &
        player1_fleet /= {} &
        player2_fleet /= {}
    THEN
        result <-- startPlayerShoots ( target )
    END ;

   endGame =
   PRE
       ( game_state = Ongoing ) &
       ( player1_fleet = {} or player2_fleet = {} )
   THEN
       IF
           ( player1_fleet = {} )
       THEN
           updateGameStatus ( Game_Over_Player2_won )
       ELSE
           updateGameStatus ( Game_Over_Player1_won )
       END
   END

END
