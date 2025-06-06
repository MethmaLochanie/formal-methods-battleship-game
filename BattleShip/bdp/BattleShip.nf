Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BattleShip))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BattleShip))==(Machine(BattleShip));
  Level(Machine(BattleShip))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BattleShip)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BattleShip))==(Shared)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BattleShip))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BattleShip))==(BattleShipControl,Players,PlayerFleet);
  List_Includes(Machine(BattleShip))==(Players,BattleShipControl)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BattleShip))==(shipsLeft,shipLocations,shotsTaken,gameStatus)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BattleShip))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BattleShip))==(?);
  Context_List_Variables(Machine(BattleShip))==(?);
  Abstract_List_Variables(Machine(BattleShip))==(?);
  Local_List_Variables(Machine(BattleShip))==(targetHit,onGoingPlayer);
  List_Variables(Machine(BattleShip))==(targetHit,onGoingPlayer,shots_missed,shots_taken,shots_hit,current_player,player2_fleet,player1_fleet,game_state);
  External_List_Variables(Machine(BattleShip))==(targetHit,onGoingPlayer,shots_missed,shots_taken,shots_hit,current_player,player2_fleet,player1_fleet,game_state)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BattleShip))==(?);
  Abstract_List_VisibleVariables(Machine(BattleShip))==(?);
  External_List_VisibleVariables(Machine(BattleShip))==(?);
  Expanded_List_VisibleVariables(Machine(BattleShip))==(?);
  List_VisibleVariables(Machine(BattleShip))==(?);
  Internal_List_VisibleVariables(Machine(BattleShip))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BattleShip))==(btrue);
  Gluing_List_Invariant(Machine(BattleShip))==(btrue);
  Abstract_List_Invariant(Machine(BattleShip))==(btrue);
  Expanded_List_Invariant(Machine(BattleShip))==(current_player: PLAYERS & shots_hit: PLAYERS <-> POW(grid) & shots_taken: PLAYERS --> NAT & shots_missed: PLAYERS <-> POW(grid) & player1_fleet: POW(grid) & player2_fleet: POW(grid) & game_state: GAME_STATE);
  Context_List_Invariant(Machine(BattleShip))==(btrue);
  List_Invariant(Machine(BattleShip))==(onGoingPlayer: PLAYERS & targetHit: TARGET_STATE)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(BattleShip))==(btrue);
  Expanded_List_Assertions(Machine(BattleShip))==(btrue);
  Context_List_Assertions(Machine(BattleShip))==(btrue);
  List_Assertions(Machine(BattleShip))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BattleShip))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BattleShip))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BattleShip))==(player1_fleet,player2_fleet:={},{};current_player,shots_hit,shots_taken,shots_missed:=Player1,{Player1|->{},Player2|->{}},{Player1|->0,Player2|->0},{Player1|->{},Player2|->{}};game_state:=Both_players_still_need_to_deploy;onGoingPlayer,targetHit:=Player1,Miss);
  Context_List_Initialisation(Machine(BattleShip))==(skip);
  List_Initialisation(Machine(BattleShip))==(onGoingPlayer:=Player1 || targetHit:=Miss)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BattleShip))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(BattleShip),Machine(Players))==(?);
  List_Instanciated_Parameters(Machine(BattleShip),Machine(BattleShipControl))==(?);
  List_Instanciated_Parameters(Machine(BattleShip),Machine(Shared))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(BattleShip),Machine(BattleShipControl))==(btrue);
  List_Context_Constraints(Machine(BattleShip))==(btrue);
  List_Constraints(Machine(BattleShip))==(btrue);
  List_Constraints(Machine(BattleShip),Machine(Players))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BattleShip))==(currentPlayer,gameRestart,deployFleet,playerShoots,endGame,shotsTaken,shipLocations,shipsLeft,gameStatus);
  List_Operations(Machine(BattleShip))==(currentPlayer,gameRestart,deployFleet,playerShoots,endGame,shotsTaken,shipLocations,shipsLeft,gameStatus)
END
&
THEORY ListInputX IS
  List_Input(Machine(BattleShip),gameStatus)==(?);
  List_Input(Machine(BattleShip),shipsLeft)==(?);
  List_Input(Machine(BattleShip),shipLocations)==(player);
  List_Input(Machine(BattleShip),shotsTaken)==(player);
  List_Input(Machine(BattleShip),currentPlayer)==(?);
  List_Input(Machine(BattleShip),gameRestart)==(?);
  List_Input(Machine(BattleShip),deployFleet)==(player,shipPositions);
  List_Input(Machine(BattleShip),playerShoots)==(target);
  List_Input(Machine(BattleShip),endGame)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BattleShip),gameStatus)==(status);
  List_Output(Machine(BattleShip),shipsLeft)==(shipCounts);
  List_Output(Machine(BattleShip),shipLocations)==(shipsquares);
  List_Output(Machine(BattleShip),shotsTaken)==(shotCount);
  List_Output(Machine(BattleShip),currentPlayer)==(currentTurn);
  List_Output(Machine(BattleShip),gameRestart)==(?);
  List_Output(Machine(BattleShip),deployFleet)==(report);
  List_Output(Machine(BattleShip),playerShoots)==(result);
  List_Output(Machine(BattleShip),endGame)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BattleShip),gameStatus)==(status <-- gameStatus);
  List_Header(Machine(BattleShip),shipsLeft)==(shipCounts <-- shipsLeft);
  List_Header(Machine(BattleShip),shipLocations)==(shipsquares <-- shipLocations(player));
  List_Header(Machine(BattleShip),shotsTaken)==(shotCount <-- shotsTaken(player));
  List_Header(Machine(BattleShip),currentPlayer)==(currentTurn <-- currentPlayer);
  List_Header(Machine(BattleShip),gameRestart)==(gameRestart);
  List_Header(Machine(BattleShip),deployFleet)==(report <-- deployFleet(player,shipPositions));
  List_Header(Machine(BattleShip),playerShoots)==(result <-- playerShoots(target));
  List_Header(Machine(BattleShip),endGame)==(endGame)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(BattleShip),gameStatus)==(btrue);
  List_Precondition(Machine(BattleShip),gameStatus)==(btrue);
  Own_Precondition(Machine(BattleShip),shipsLeft)==(btrue);
  List_Precondition(Machine(BattleShip),shipsLeft)==(btrue);
  Own_Precondition(Machine(BattleShip),shipLocations)==(player: PLAYERS);
  List_Precondition(Machine(BattleShip),shipLocations)==(player: PLAYERS);
  Own_Precondition(Machine(BattleShip),shotsTaken)==(player: PLAYERS);
  List_Precondition(Machine(BattleShip),shotsTaken)==(player: PLAYERS);
  List_Precondition(Machine(BattleShip),currentPlayer)==(game_state = Ongoing);
  List_Precondition(Machine(BattleShip),gameRestart)==(player2_fleet = {} or player1_fleet = {} & (game_state = Game_Over_Player2_won or game_state = Game_Over_Player1_won));
  List_Precondition(Machine(BattleShip),deployFleet)==(player: PLAYERS & shipPositions <: grid & card(shipPositions) = fleet_size & game_state = Both_players_still_need_to_deploy & ((player = Player1 => player1_fleet = {}) & (player = Player2 => player2_fleet = {})));
  List_Precondition(Machine(BattleShip),playerShoots)==(target: grid & game_state = Ongoing & player1_fleet/={} & player2_fleet/={});
  List_Precondition(Machine(BattleShip),endGame)==(game_state = Ongoing & (player1_fleet = {} or player2_fleet = {}))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BattleShip),endGame)==(game_state = Ongoing & (player1_fleet = {} or player2_fleet = {}) | player1_fleet = {} ==> (Game_Over_Player2_won: GAME_STATE | game_state:=Game_Over_Player2_won) [] not(player1_fleet = {}) ==> (Game_Over_Player1_won: GAME_STATE | game_state:=Game_Over_Player1_won));
  Expanded_List_Substitution(Machine(BattleShip),playerShoots)==(target: grid & game_state = Ongoing & player1_fleet/={} & player2_fleet/={} & target: grid | target/:grid ==> result:=Error_Invalid_Target [] not(target/:grid) ==> (target/:shots_hit(current_player) & target/:shots_missed(current_player) ==> (shots_taken:=shots_taken<+{current_player|->shots_taken(current_player)+1} || (current_player = Player1 ==> (target: player2_fleet ==> (Player2 = Player1 ==> player1_fleet:=player1_fleet-{target} [] not(Player2 = Player1) ==> (Player2 = Player2 ==> player2_fleet:=player2_fleet-{target} [] not(Player2 = Player2) ==> skip) || shots_hit:=shots_hit<+{current_player|->(shots_hit(current_player)\/{target})} || result:=Hit) [] not(target: player2_fleet) ==> shots_missed,result:=shots_missed<+{current_player|->(shots_missed(current_player)\/{target})},Miss || current_player:=Player2) [] not(current_player = Player1) ==> (target: player1_fleet ==> (Player1 = Player1 ==> player1_fleet:=player1_fleet-{target} [] not(Player1 = Player1) ==> (Player1 = Player2 ==> player2_fleet:=player2_fleet-{target} [] not(Player1 = Player2) ==> skip) || shots_hit:=shots_hit<+{current_player|->(shots_hit(current_player)\/{target})} || result:=Hit) [] not(target: player1_fleet) ==> shots_missed,result:=shots_missed<+{current_player|->(shots_missed(current_player)\/{target})},Miss || current_player:=Player1))) [] not(target/:shots_hit(current_player) & target/:shots_missed(current_player)) ==> result:=Already_Fired));
  Expanded_List_Substitution(Machine(BattleShip),deployFleet)==(player: PLAYERS & shipPositions <: grid & card(shipPositions) = fleet_size & game_state = Both_players_still_need_to_deploy & (player = Player1 => player1_fleet = {}) & (player = Player2 => player2_fleet = {}) & player: PLAYERS & shipPositions <: grid & card(shipPositions) = fleet_size | shipPositions /<: grid ==> report:=Error_Some_positions_are_outside_the_grid [] not(shipPositions /<: grid) ==> (card(shipPositions)/=fleet_size ==> report:=Error_Incorrect_fleet_size [] not(card(shipPositions)/=fleet_size) ==> (player1_fleet/={} & player2_fleet/={} ==> report:=Error_Fleets_already_deployed [] not(player1_fleet/={} & player2_fleet/={}) ==> (player = Player1 & player1_fleet = {} ==> player1_fleet,report:=shipPositions,Successfully_fleet_deployed [] not(player = Player1 & player1_fleet = {}) ==> (player = Player2 & player2_fleet = {} ==> player2_fleet,report:=shipPositions,Successfully_fleet_deployed [] not(player = Player2 & player2_fleet = {}) ==> skip)))) || (player = Player1 ==> (player2_fleet/={} ==> (Ongoing: GAME_STATE | game_state:=Ongoing) [] not(player2_fleet/={}) ==> skip) [] not(player = Player1) ==> (player1_fleet/={} ==> (Ongoing: GAME_STATE | game_state:=Ongoing) [] not(player1_fleet/={}) ==> skip)));
  Expanded_List_Substitution(Machine(BattleShip),gameRestart)==(player2_fleet = {} or player1_fleet = {} & (game_state = Game_Over_Player2_won or game_state = Game_Over_Player1_won) & (player1_fleet = {} or player2_fleet = {}) & Both_players_still_need_to_deploy: GAME_STATE | player1_fleet,player2_fleet:={},{} || current_player:=Player1 || shots_hit:={Player1|->{},Player2|->{}} || shots_taken:={Player1|->0,Player2|->0} || shots_missed:={Player1|->{},Player2|->{}} || game_state:=Both_players_still_need_to_deploy);
  Expanded_List_Substitution(Machine(BattleShip),currentPlayer)==(game_state = Ongoing | currentTurn:=current_player);
  List_Substitution(Machine(BattleShip),gameStatus)==(status:=game_state);
  Expanded_List_Substitution(Machine(BattleShip),gameStatus)==(btrue | status:=game_state);
  List_Substitution(Machine(BattleShip),shipsLeft)==(shipCounts:=card(player1_fleet)+card(player2_fleet));
  Expanded_List_Substitution(Machine(BattleShip),shipsLeft)==(btrue | shipCounts:=card(player1_fleet)+card(player2_fleet));
  List_Substitution(Machine(BattleShip),shipLocations)==(IF player = Player1 THEN shipsquares:=player1_fleet ELSE shipsquares:=player2_fleet END);
  Expanded_List_Substitution(Machine(BattleShip),shipLocations)==(player: PLAYERS | player = Player1 ==> shipsquares:=player1_fleet [] not(player = Player1) ==> shipsquares:=player2_fleet);
  List_Substitution(Machine(BattleShip),shotsTaken)==(shotCount:=shots_taken(player));
  Expanded_List_Substitution(Machine(BattleShip),shotsTaken)==(player: PLAYERS | shotCount:=shots_taken(player));
  List_Substitution(Machine(BattleShip),currentPlayer)==(currentTurn:=current_player);
  List_Substitution(Machine(BattleShip),gameRestart)==(resetPlayer || updateGameStatus(Both_players_still_need_to_deploy));
  List_Substitution(Machine(BattleShip),deployFleet)==(report <-- startDeployFleet(player,shipPositions) || IF player = Player1 THEN IF player2_fleet/={} THEN updateGameStatus(Ongoing) END ELSIF player1_fleet/={} THEN updateGameStatus(Ongoing) END);
  List_Substitution(Machine(BattleShip),playerShoots)==(result <-- startPlayerShoots(target));
  List_Substitution(Machine(BattleShip),endGame)==(IF player1_fleet = {} THEN updateGameStatus(Game_Over_Player2_won) ELSE updateGameStatus(Game_Over_Player1_won) END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BattleShip))==(fleet_size);
  Inherited_List_Constants(Machine(BattleShip))==(fleet_size);
  List_Constants(Machine(BattleShip))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(BattleShip),MESSAGE)==({Error_Some_positions_are_outside_the_grid,Error_Incorrect_fleet_size,Error_Fleets_already_deployed,Successfully_fleet_deployed});
  Context_List_Enumerated(Machine(BattleShip))==(GAME_STATE,PLAYERS);
  Context_List_Defered(Machine(BattleShip))==(?);
  Context_List_Sets(Machine(BattleShip))==(GAME_STATE,PLAYERS);
  List_Valuable_Sets(Machine(BattleShip))==(?);
  Inherited_List_Enumerated(Machine(BattleShip))==(TARGET_STATE,MESSAGE);
  Inherited_List_Defered(Machine(BattleShip))==(?);
  Inherited_List_Sets(Machine(BattleShip))==(TARGET_STATE,MESSAGE);
  List_Enumerated(Machine(BattleShip))==(?);
  List_Defered(Machine(BattleShip))==(?);
  List_Sets(Machine(BattleShip))==(?);
  Set_Definition(Machine(BattleShip),TARGET_STATE)==({Hit,Miss,Already_Fired,Error_Invalid_Target});
  Set_Definition(Machine(BattleShip),PLAYERS)==({Player1,Player2});
  Set_Definition(Machine(BattleShip),GAME_STATE)==({Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BattleShip))==(?);
  Expanded_List_HiddenConstants(Machine(BattleShip))==(?);
  List_HiddenConstants(Machine(BattleShip))==(?);
  External_List_HiddenConstants(Machine(BattleShip))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BattleShip))==(btrue);
  Context_List_Properties(Machine(BattleShip))==(grid_size = 10 & xx = 1..grid_size & yy = 1..grid_size & grid = xx*yy & GAME_STATE: FIN(INTEGER) & not(GAME_STATE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Machine(BattleShip))==(TARGET_STATE: FIN(INTEGER) & not(TARGET_STATE = {}) & fleet_size = 3 & MESSAGE: FIN(INTEGER) & not(MESSAGE = {}));
  List_Properties(Machine(BattleShip))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(BattleShip),Machine(Shared))==(?);
  Seen_Context_List_Enumerated(Machine(BattleShip))==(?);
  Seen_Context_List_Invariant(Machine(BattleShip))==(btrue);
  Seen_Context_List_Assertions(Machine(BattleShip))==(btrue);
  Seen_Context_List_Properties(Machine(BattleShip))==(btrue);
  Seen_List_Constraints(Machine(BattleShip))==(btrue);
  Seen_List_Operations(Machine(BattleShip),Machine(Shared))==(?);
  Seen_Expanded_List_Invariant(Machine(BattleShip),Machine(Shared))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BattleShip),gameStatus)==(?);
  List_ANY_Var(Machine(BattleShip),shipsLeft)==(?);
  List_ANY_Var(Machine(BattleShip),shipLocations)==(?);
  List_ANY_Var(Machine(BattleShip),shotsTaken)==(?);
  List_ANY_Var(Machine(BattleShip),currentPlayer)==(?);
  List_ANY_Var(Machine(BattleShip),gameRestart)==(?);
  List_ANY_Var(Machine(BattleShip),deployFleet)==(?);
  List_ANY_Var(Machine(BattleShip),playerShoots)==(?);
  List_ANY_Var(Machine(BattleShip),endGame)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BattleShip)) == (? | TARGET_STATE,Hit,Miss,Already_Fired,Error_Invalid_Target,fleet_size,MESSAGE,Error_Some_positions_are_outside_the_grid,Error_Incorrect_fleet_size,Error_Fleets_already_deployed,Successfully_fleet_deployed | targetHit,onGoingPlayer | V,game_state,shots_missed,shots_taken,shots_hit,current_player,V,player2_fleet,player1_fleet | currentPlayer,gameRestart,deployFleet,playerShoots,endGame | shipsLeft,shipLocations,shotsTaken,gameStatus | seen(Machine(Shared)),included(Machine(Players)),included(Machine(BattleShipControl)) | ? | BattleShip);
  List_Of_HiddenCst_Ids(Machine(BattleShip)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BattleShip)) == (fleet_size);
  List_Of_VisibleVar_Ids(Machine(BattleShip)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BattleShip)) == (seen(Machine(Shared)): (xx,yy,grid_size,grid,GAME_STATE,PLAYERS,Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won,Player1,Player2 | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(BattleShipControl)) == (? | ? | game_state | ? | gameStatus,updateGameStatus | ? | seen(Machine(Shared)) | ? | BattleShipControl);
  List_Of_HiddenCst_Ids(Machine(BattleShipControl)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BattleShipControl)) == (?);
  List_Of_VisibleVar_Ids(Machine(BattleShipControl)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BattleShipControl)) == (?: ?);
  List_Of_Ids(Machine(Shared)) == (xx,yy,grid_size,grid,GAME_STATE,PLAYERS,Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won,Player1,Player2 | ? | ? | ? | ? | ? | ? | ? | Shared);
  List_Of_HiddenCst_Ids(Machine(Shared)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Shared)) == (xx,yy,grid_size,grid);
  List_Of_VisibleVar_Ids(Machine(Shared)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Shared)) == (?: ?);
  List_Of_Ids(Machine(Players)) == (TARGET_STATE,Hit,Miss,Already_Fired,Error_Invalid_Target | fleet_size,MESSAGE,Error_Some_positions_are_outside_the_grid,Error_Incorrect_fleet_size,Error_Fleets_already_deployed,Successfully_fleet_deployed | shots_missed,shots_taken,shots_hit,current_player | V,player2_fleet,player1_fleet | startPlayerShoots,shotsTaken,shipLocations,resetPlayer | startDeployFleet,shipsLeft,resetFleets | seen(Machine(Shared)),included(Machine(PlayerFleet)) | ? | Players);
  List_Of_HiddenCst_Ids(Machine(Players)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Players)) == (fleet_size);
  List_Of_VisibleVar_Ids(Machine(Players)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Players)) == (seen(Machine(Shared)): (xx,yy,grid_size,grid,GAME_STATE,PLAYERS,Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won,Player1,Player2 | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(PlayerFleet)) == (fleet_size,MESSAGE,Error_Some_positions_are_outside_the_grid,Error_Incorrect_fleet_size,Error_Fleets_already_deployed,Successfully_fleet_deployed | ? | player2_fleet,player1_fleet | ? | startDeployFleet,removeShip,shipsLeft,resetFleets | ? | seen(Machine(Shared)) | ? | PlayerFleet);
  List_Of_HiddenCst_Ids(Machine(PlayerFleet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PlayerFleet)) == (fleet_size);
  List_Of_VisibleVar_Ids(Machine(PlayerFleet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PlayerFleet)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(BattleShip)) == (Type(TARGET_STATE) == Cst(SetOf(etype(TARGET_STATE,0,3)));Type(MESSAGE) == Cst(SetOf(etype(MESSAGE,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(BattleShip)) == (Type(Error_Invalid_Target) == Cst(etype(TARGET_STATE,0,3));Type(Already_Fired) == Cst(etype(TARGET_STATE,0,3));Type(Miss) == Cst(etype(TARGET_STATE,0,3));Type(Hit) == Cst(etype(TARGET_STATE,0,3));Type(Error_Some_positions_are_outside_the_grid) == Cst(etype(MESSAGE,0,3));Type(Error_Incorrect_fleet_size) == Cst(etype(MESSAGE,0,3));Type(Error_Fleets_already_deployed) == Cst(etype(MESSAGE,0,3));Type(Successfully_fleet_deployed) == Cst(etype(MESSAGE,0,3));Type(fleet_size) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(BattleShip)) == (Type(current_player) == Mvl(etype(PLAYERS,?,?));Type(shots_hit) == Mvl(SetOf(etype(PLAYERS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(shots_taken) == Mvl(SetOf(etype(PLAYERS,0,1)*btype(INTEGER,0,MAXINT)));Type(shots_missed) == Mvl(SetOf(etype(PLAYERS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(player2_fleet) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(player1_fleet) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(game_state) == Mvl(etype(GAME_STATE,?,?));Type(targetHit) == Mvl(etype(TARGET_STATE,?,?));Type(onGoingPlayer) == Mvl(etype(PLAYERS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BattleShip)) == (Type(shipsLeft) == Cst(btype(INTEGER,?,?),No_type);Type(shipLocations) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),etype(PLAYERS,?,?));Type(shotsTaken) == Cst(btype(INTEGER,?,?),etype(PLAYERS,?,?));Type(gameStatus) == Cst(etype(GAME_STATE,?,?),No_type);Type(endGame) == Cst(No_type,No_type);Type(playerShoots) == Cst(etype(TARGET_STATE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(deployFleet) == Cst(etype(MESSAGE,?,?),etype(PLAYERS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(gameRestart) == Cst(No_type,No_type);Type(currentPlayer) == Cst(etype(PLAYERS,?,?),No_type));
  Observers(Machine(BattleShip)) == (Type(shipsLeft) == Cst(btype(INTEGER,?,?),No_type);Type(shipLocations) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),etype(PLAYERS,?,?));Type(shotsTaken) == Cst(btype(INTEGER,?,?),etype(PLAYERS,?,?));Type(gameStatus) == Cst(etype(GAME_STATE,?,?),No_type);Type(playerShoots) == Cst(etype(TARGET_STATE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(currentPlayer) == Cst(etype(PLAYERS,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
