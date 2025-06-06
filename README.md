⚠ Notice

This project is proprietary. No use, reproduction, modification, or distribution of this software or its source code is allowed without explicit written permission from the author, Methma Lochanie Rathnayaka.

If you wish to reference this work or request usage permissions, please contact the author directly.

Unauthorized use will be considered a violation of copyright and may lead to legal action.

# Battleship Game (Formal Methods)

## Overview
This project is a formal specification of the classic Battleship game, developed using the B-Method. The specification models the rules, state, and operations of a two-player Battleship game, focusing on correctness and verifiability. The project is structured into several B machines, each responsible for a different aspect of the game.

## Project Structure

- **BattleShip/**: Main directory containing the B-Method machines and supporting files.
  - `BattleShip.mch`: Main machine orchestrating the game logic, player turns, and game state transitions.
  - `Players.mch`: Manages player actions, including shooting and tracking hits/misses.
  - `PlayerFleet.mch`: Handles the deployment and management of each player's fleet.
  - `BattleShipControl.mch`: Controls the overall game state (ongoing, game over, etc.).
  - `Shared.mch`: Defines shared constants, sets, and types (e.g., grid size, player identifiers).
  - `Fleet.mch`, `PlayerGrid.mch`: Supporting machines for grid and fleet definitions.
  - `gif/`: Contains image assets referenced in the specification for animation or visualization.
  - `bdp/`: Contains generated files, proofs, and dependency information for the B-Method tools.
  - `lang/`: (Empty or placeholder) for language or localization files.
- `BattleShip.desc`: Project description and metadata.

## Key Concepts
- **Grid**: The game is played on a 10x10 grid, as defined in `Shared.mch`.
- **Players**: Two players (`Player1`, `Player2`) take turns to deploy fleets and shoot at each other's ships.
- **Fleet**: Each player deploys a fleet of 3 ships (modifiable in `PlayerFleet.mch`).
- **Game State**: Managed by `BattleShipControl.mch`, with states such as `Ongoing`, `Game_Over_Player1_won`, etc.
- **Operations**: The main operations include deploying fleets, shooting, checking game status, and restarting the game.

## How to Use
This project is intended for use with B-Method tools such as Atelier B or ProB. To explore or verify the specification:

1. Open the `BattleShip.mch` file in your preferred B-Method tool.
2. Use the tool to animate, check, or prove properties of the game.
3. Explore the supporting machines for detailed logic on player actions, fleet management, and game state transitions.

## Extending the Specification
- To change the fleet size, modify the `fleet_size` constant in `PlayerFleet.mch`.
- To adjust the grid size, update the `grid_size` constant in `Shared.mch`.
- Additional rules or features can be added by extending the relevant machines and updating invariants and operations accordingly.

## Author & Institution
Created as part of a concurrent programming coursework.
- **Author:** M.L.Rathnayaka
- **Institution:** Informatics Institute of Technology (IIT) affiliated by University of Westminster (UoW)
- **Scenario:** 1 (Concurrent Coffee Shop)

## License
This project is for academic and educational purposes. 
This project is licensed under the proprietary License.