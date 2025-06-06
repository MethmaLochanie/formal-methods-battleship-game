/* PlayerFleet
 * Author: Methma
 * Creation date: 12/9/2024
 */
MACHINE
    PlayerFleet
    
SEES
  Shared
    
SETS
    MESSAGE = {Error_Some_positions_are_outside_the_grid, Error_Incorrect_fleet_size, Error_Fleets_already_deployed, Successfully_fleet_deployed}

CONSTANTS
    fleet_size

PROPERTIES
    fleet_size = 3
    
VARIABLES
    player1_fleet,
    player2_fleet
    
INVARIANT
    player1_fleet : POW(grid) &
    player2_fleet : POW(grid) 
    
INITIALISATION
    player1_fleet := {} ||
    player2_fleet := {}

OPERATIONS

    report <-- startDeployFleet(player, shipPositions) =
    PRE
        player : PLAYERS &
        shipPositions <: grid &
        card(shipPositions) = fleet_size
    THEN
        IF 
            (shipPositions) /<: grid 
        THEN
            report := Error_Some_positions_are_outside_the_grid
        ELSIF 
            card(shipPositions) /= fleet_size
        THEN
            report := Error_Incorrect_fleet_size
        ELSIF
            (player1_fleet /= {} & player2_fleet /= {})
        THEN
            report := Error_Fleets_already_deployed
        ELSE
            IF
                (player = Player1 & player1_fleet = {})
            THEN
                player1_fleet := shipPositions ||
                report := Successfully_fleet_deployed
            ELSIF 
                (player = Player2 & player2_fleet = {}) 
            THEN
                player2_fleet := shipPositions ||
                report := Successfully_fleet_deployed
            END
        END
    END;
 
   removeShip(player, ship_position) =
   PRE
       player : PLAYERS &
       ship_position : grid &
       (player = Player1 => ship_position : player1_fleet) & 
       (player = Player2 => ship_position : player2_fleet)
   THEN
       IF 
           player = Player1 
       THEN
           player1_fleet := player1_fleet - {ship_position}
       ELSIF 
           player = Player2 
       THEN
           player2_fleet := player2_fleet - {ship_position}
       END
    END;

    shipCounts <-- shipsLeft =
    BEGIN
        shipCounts := card(player1_fleet) + card(player2_fleet)
    END;
    
    resetFleets =
    PRE
        player1_fleet = {} or  player2_fleet = {}
    THEN
        player1_fleet := {} ||  player2_fleet := {}
    END
    
END
