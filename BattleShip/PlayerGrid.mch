/* PlayerGrid
 * Author: Methma
 * Creation date: 12/9/2024
 */
MACHINE
    PlayerGrid

    
CONSTANTS
    XX,
    YY,
    GRID_SIZE,
    GRID
    
    
PROPERTIES
    GRID_SIZE = 10 &
    XX = 1..GRID_SIZE &
    YY = 1..GRID_SIZE &
    GRID = XX*YY
    
END