/* Players
 * Author: Methma
 * Creation date: 12/10/2024
 */
MACHINE
    Players

SEES
    Shared
    
INCLUDES
    PlayerFleet
    
PROMOTES
    startDeployFleet, shipsLeft, resetFleets
    
SETS
    TARGET_STATE = {Hit, Miss, Already_Fired, Error_Invalid_Target}
    
VARIABLES
    current_player,
    shots_hit,
    shots_taken,
    shots_missed
    
INVARIANT
    current_player : PLAYERS &
    shots_hit : PLAYERS <-> POW(grid) &
    shots_taken : PLAYERS --> NAT &
    shots_missed : PLAYERS <-> POW(grid)
    
INITIALISATION
    current_player := Player1 ||
    shots_hit := {(Player1 |-> {}), (Player2 |-> {})} ||
    shots_taken := {(Player1 |-> 0), (Player2 |-> 0)} ||
    shots_missed := {(Player1 |-> {}), (Player2 |-> {})}
    
OPERATIONS

    report <-- startPlayerShoots(target) =
    PRE
        target : grid
    THEN
        IF target /: grid
        THEN
            report := Error_Invalid_Target
        ELSE
            IF
               (target /: shots_hit(current_player) & target /: shots_missed(current_player))
            THEN
               shots_taken(current_player) := shots_taken(current_player) + 1 ||
               IF
                 current_player = Player1
               THEN
                   IF
                      target : player2_fleet
                   THEN
                       removeShip(Player2, target) ||
                       shots_hit(current_player) := shots_hit(current_player) \/ {target} ||
                       report := Hit
                   ELSE
                       shots_missed(current_player) := shots_missed(current_player) \/ {target} ||
                       report := Miss
                   END || current_player := Player2
               ELSE
                   IF
                      target : player1_fleet
                   THEN
                      removeShip(Player1, target) ||
                      shots_hit(current_player) := shots_hit(current_player) \/ {target} ||
                      report := Hit
                   ELSE
                      shots_missed(current_player) := shots_missed(current_player) \/ {target} ||
                      report := Miss
                   END || current_player := Player1
               END
           ELSE
               report := Already_Fired
           END
       END
    END;
 
    shotCount <-- shotsTaken(player) =
    PRE
        player : PLAYERS 
       
    THEN
        shotCount := shots_taken(player)
    END;
    
   shipsquares <-- shipLocations(player) =
   PRE
       player : PLAYERS
   THEN
       IF 
           player = Player1 
       THEN
           shipsquares := player1_fleet
       ELSE
           shipsquares := player2_fleet
       END
   END;
   
   resetPlayer = 
   PRE
        (player1_fleet = {} or  player2_fleet = {})
   THEN
       resetFleets||
       current_player := Player1 ||
       shots_hit := {(Player1 |-> {}), (Player2 |-> {})} ||
       shots_taken := {(Player1 |-> 0), (Player2 |-> 0)} ||
       shots_missed := {(Player1 |-> {}), (Player2 |-> {})}
   END

END
