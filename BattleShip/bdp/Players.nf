Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Players))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Players))==(Machine(Players));
  Level(Machine(Players))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Players)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Players))==(Shared)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Players))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Players))==(PlayerFleet);
  List_Includes(Machine(Players))==(PlayerFleet)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Players))==(startDeployFleet,shipsLeft,resetFleets)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Players))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Players))==(?);
  Context_List_Variables(Machine(Players))==(?);
  Abstract_List_Variables(Machine(Players))==(?);
  Local_List_Variables(Machine(Players))==(shots_missed,shots_taken,shots_hit,current_player);
  List_Variables(Machine(Players))==(shots_missed,shots_taken,shots_hit,current_player,player2_fleet,player1_fleet);
  External_List_Variables(Machine(Players))==(shots_missed,shots_taken,shots_hit,current_player,player2_fleet,player1_fleet)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Players))==(?);
  Abstract_List_VisibleVariables(Machine(Players))==(?);
  External_List_VisibleVariables(Machine(Players))==(?);
  Expanded_List_VisibleVariables(Machine(Players))==(?);
  List_VisibleVariables(Machine(Players))==(?);
  Internal_List_VisibleVariables(Machine(Players))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Players))==(btrue);
  Gluing_List_Invariant(Machine(Players))==(btrue);
  Abstract_List_Invariant(Machine(Players))==(btrue);
  Expanded_List_Invariant(Machine(Players))==(player1_fleet: POW(grid) & player2_fleet: POW(grid));
  Context_List_Invariant(Machine(Players))==(btrue);
  List_Invariant(Machine(Players))==(current_player: PLAYERS & shots_hit: PLAYERS <-> POW(grid) & shots_taken: PLAYERS --> NAT & shots_missed: PLAYERS <-> POW(grid))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Players))==(btrue);
  Expanded_List_Assertions(Machine(Players))==(btrue);
  Context_List_Assertions(Machine(Players))==(btrue);
  List_Assertions(Machine(Players))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Players))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Players))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Players))==(player1_fleet,player2_fleet:={},{};current_player,shots_hit,shots_taken,shots_missed:=Player1,{Player1|->{},Player2|->{}},{Player1|->0,Player2|->0},{Player1|->{},Player2|->{}});
  Context_List_Initialisation(Machine(Players))==(skip);
  List_Initialisation(Machine(Players))==(current_player:=Player1 || shots_hit:={Player1|->{},Player2|->{}} || shots_taken:={Player1|->0,Player2|->0} || shots_missed:={Player1|->{},Player2|->{}})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Players))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Players),Machine(PlayerFleet))==(?);
  List_Instanciated_Parameters(Machine(Players),Machine(Shared))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Players),Machine(PlayerFleet))==(btrue);
  List_Context_Constraints(Machine(Players))==(btrue);
  List_Constraints(Machine(Players))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Players))==(startPlayerShoots,shotsTaken,shipLocations,resetPlayer,startDeployFleet,shipsLeft,resetFleets);
  List_Operations(Machine(Players))==(startPlayerShoots,shotsTaken,shipLocations,resetPlayer,startDeployFleet,shipsLeft,resetFleets)
END
&
THEORY ListInputX IS
  List_Input(Machine(Players),resetFleets)==(?);
  List_Input(Machine(Players),shipsLeft)==(?);
  List_Input(Machine(Players),startDeployFleet)==(player,shipPositions);
  List_Input(Machine(Players),startPlayerShoots)==(target);
  List_Input(Machine(Players),shotsTaken)==(player);
  List_Input(Machine(Players),shipLocations)==(player);
  List_Input(Machine(Players),resetPlayer)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Players),resetFleets)==(?);
  List_Output(Machine(Players),shipsLeft)==(shipCounts);
  List_Output(Machine(Players),startDeployFleet)==(report);
  List_Output(Machine(Players),startPlayerShoots)==(report);
  List_Output(Machine(Players),shotsTaken)==(shotCount);
  List_Output(Machine(Players),shipLocations)==(shipsquares);
  List_Output(Machine(Players),resetPlayer)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Players),resetFleets)==(resetFleets);
  List_Header(Machine(Players),shipsLeft)==(shipCounts <-- shipsLeft);
  List_Header(Machine(Players),startDeployFleet)==(report <-- startDeployFleet(player,shipPositions));
  List_Header(Machine(Players),startPlayerShoots)==(report <-- startPlayerShoots(target));
  List_Header(Machine(Players),shotsTaken)==(shotCount <-- shotsTaken(player));
  List_Header(Machine(Players),shipLocations)==(shipsquares <-- shipLocations(player));
  List_Header(Machine(Players),resetPlayer)==(resetPlayer)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Players),resetFleets)==(player1_fleet = {} or player2_fleet = {});
  List_Precondition(Machine(Players),resetFleets)==(player1_fleet = {} or player2_fleet = {});
  Own_Precondition(Machine(Players),shipsLeft)==(btrue);
  List_Precondition(Machine(Players),shipsLeft)==(btrue);
  Own_Precondition(Machine(Players),startDeployFleet)==(player: PLAYERS & shipPositions <: grid & card(shipPositions) = fleet_size);
  List_Precondition(Machine(Players),startDeployFleet)==(player: PLAYERS & shipPositions <: grid & card(shipPositions) = fleet_size);
  List_Precondition(Machine(Players),startPlayerShoots)==(target: grid);
  List_Precondition(Machine(Players),shotsTaken)==(player: PLAYERS);
  List_Precondition(Machine(Players),shipLocations)==(player: PLAYERS);
  List_Precondition(Machine(Players),resetPlayer)==(player1_fleet = {} or player2_fleet = {})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Players),resetPlayer)==(player1_fleet = {} or player2_fleet = {} | player1_fleet,player2_fleet:={},{} || current_player:=Player1 || shots_hit:={Player1|->{},Player2|->{}} || shots_taken:={Player1|->0,Player2|->0} || shots_missed:={Player1|->{},Player2|->{}});
  Expanded_List_Substitution(Machine(Players),shipLocations)==(player: PLAYERS | player = Player1 ==> shipsquares:=player1_fleet [] not(player = Player1) ==> shipsquares:=player2_fleet);
  Expanded_List_Substitution(Machine(Players),shotsTaken)==(player: PLAYERS | shotCount:=shots_taken(player));
  Expanded_List_Substitution(Machine(Players),startPlayerShoots)==(target: grid | target/:grid ==> report:=Error_Invalid_Target [] not(target/:grid) ==> (target/:shots_hit(current_player) & target/:shots_missed(current_player) ==> (shots_taken:=shots_taken<+{current_player|->shots_taken(current_player)+1} || (current_player = Player1 ==> (target: player2_fleet ==> (Player2: PLAYERS & target: grid & (Player2 = Player1 => target: player1_fleet) & (Player2 = Player2 => target: player2_fleet) | Player2 = Player1 ==> player1_fleet:=player1_fleet-{target} [] not(Player2 = Player1) ==> (Player2 = Player2 ==> player2_fleet:=player2_fleet-{target} [] not(Player2 = Player2) ==> skip) || shots_hit:=shots_hit<+{current_player|->(shots_hit(current_player)\/{target})} || report:=Hit) [] not(target: player2_fleet) ==> shots_missed,report:=shots_missed<+{current_player|->(shots_missed(current_player)\/{target})},Miss || current_player:=Player2) [] not(current_player = Player1) ==> (target: player1_fleet ==> (Player1: PLAYERS & target: grid & (Player1 = Player1 => target: player1_fleet) & (Player1 = Player2 => target: player2_fleet) | Player1 = Player1 ==> player1_fleet:=player1_fleet-{target} [] not(Player1 = Player1) ==> (Player1 = Player2 ==> player2_fleet:=player2_fleet-{target} [] not(Player1 = Player2) ==> skip) || shots_hit:=shots_hit<+{current_player|->(shots_hit(current_player)\/{target})} || report:=Hit) [] not(target: player1_fleet) ==> shots_missed,report:=shots_missed<+{current_player|->(shots_missed(current_player)\/{target})},Miss || current_player:=Player1))) [] not(target/:shots_hit(current_player) & target/:shots_missed(current_player)) ==> report:=Already_Fired));
  List_Substitution(Machine(Players),resetFleets)==(player1_fleet:={} || player2_fleet:={});
  Expanded_List_Substitution(Machine(Players),resetFleets)==(player1_fleet = {} or player2_fleet = {} | player1_fleet,player2_fleet:={},{});
  List_Substitution(Machine(Players),shipsLeft)==(shipCounts:=card(player1_fleet)+card(player2_fleet));
  Expanded_List_Substitution(Machine(Players),shipsLeft)==(btrue | shipCounts:=card(player1_fleet)+card(player2_fleet));
  List_Substitution(Machine(Players),startDeployFleet)==(IF shipPositions /<: grid THEN report:=Error_Some_positions_are_outside_the_grid ELSIF card(shipPositions)/=fleet_size THEN report:=Error_Incorrect_fleet_size ELSIF player1_fleet/={} & player2_fleet/={} THEN report:=Error_Fleets_already_deployed ELSE IF player = Player1 & player1_fleet = {} THEN player1_fleet:=shipPositions || report:=Successfully_fleet_deployed ELSIF player = Player2 & player2_fleet = {} THEN player2_fleet:=shipPositions || report:=Successfully_fleet_deployed END END);
  Expanded_List_Substitution(Machine(Players),startDeployFleet)==(player: PLAYERS & shipPositions <: grid & card(shipPositions) = fleet_size | shipPositions /<: grid ==> report:=Error_Some_positions_are_outside_the_grid [] not(shipPositions /<: grid) ==> (card(shipPositions)/=fleet_size ==> report:=Error_Incorrect_fleet_size [] not(card(shipPositions)/=fleet_size) ==> (player1_fleet/={} & player2_fleet/={} ==> report:=Error_Fleets_already_deployed [] not(player1_fleet/={} & player2_fleet/={}) ==> (player = Player1 & player1_fleet = {} ==> player1_fleet,report:=shipPositions,Successfully_fleet_deployed [] not(player = Player1 & player1_fleet = {}) ==> (player = Player2 & player2_fleet = {} ==> player2_fleet,report:=shipPositions,Successfully_fleet_deployed [] not(player = Player2 & player2_fleet = {}) ==> skip)))));
  List_Substitution(Machine(Players),startPlayerShoots)==(IF target/:grid THEN report:=Error_Invalid_Target ELSE IF target/:shots_hit(current_player) & target/:shots_missed(current_player) THEN shots_taken(current_player):=shots_taken(current_player)+1 || IF current_player = Player1 THEN IF target: player2_fleet THEN removeShip(Player2,target) || shots_hit(current_player):=shots_hit(current_player)\/{target} || report:=Hit ELSE shots_missed(current_player):=shots_missed(current_player)\/{target} || report:=Miss END || current_player:=Player2 ELSE IF target: player1_fleet THEN removeShip(Player1,target) || shots_hit(current_player):=shots_hit(current_player)\/{target} || report:=Hit ELSE shots_missed(current_player):=shots_missed(current_player)\/{target} || report:=Miss END || current_player:=Player1 END ELSE report:=Already_Fired END END);
  List_Substitution(Machine(Players),shotsTaken)==(shotCount:=shots_taken(player));
  List_Substitution(Machine(Players),shipLocations)==(IF player = Player1 THEN shipsquares:=player1_fleet ELSE shipsquares:=player2_fleet END);
  List_Substitution(Machine(Players),resetPlayer)==(resetFleets || current_player:=Player1 || shots_hit:={Player1|->{},Player2|->{}} || shots_taken:={Player1|->0,Player2|->0} || shots_missed:={Player1|->{},Player2|->{}})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Players))==(fleet_size);
  Inherited_List_Constants(Machine(Players))==(fleet_size);
  List_Constants(Machine(Players))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Players),MESSAGE)==({Error_Some_positions_are_outside_the_grid,Error_Incorrect_fleet_size,Error_Fleets_already_deployed,Successfully_fleet_deployed});
  Context_List_Enumerated(Machine(Players))==(GAME_STATE,PLAYERS);
  Context_List_Defered(Machine(Players))==(?);
  Context_List_Sets(Machine(Players))==(GAME_STATE,PLAYERS);
  List_Valuable_Sets(Machine(Players))==(?);
  Inherited_List_Enumerated(Machine(Players))==(MESSAGE);
  Inherited_List_Defered(Machine(Players))==(?);
  Inherited_List_Sets(Machine(Players))==(MESSAGE);
  List_Enumerated(Machine(Players))==(TARGET_STATE);
  List_Defered(Machine(Players))==(?);
  List_Sets(Machine(Players))==(TARGET_STATE);
  Set_Definition(Machine(Players),PLAYERS)==({Player1,Player2});
  Set_Definition(Machine(Players),GAME_STATE)==({Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won});
  Set_Definition(Machine(Players),TARGET_STATE)==({Hit,Miss,Already_Fired,Error_Invalid_Target})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Players))==(?);
  Expanded_List_HiddenConstants(Machine(Players))==(?);
  List_HiddenConstants(Machine(Players))==(?);
  External_List_HiddenConstants(Machine(Players))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Players))==(btrue);
  Context_List_Properties(Machine(Players))==(grid_size = 10 & xx = 1..grid_size & yy = 1..grid_size & grid = xx*yy & GAME_STATE: FIN(INTEGER) & not(GAME_STATE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Machine(Players))==(fleet_size = 3 & MESSAGE: FIN(INTEGER) & not(MESSAGE = {}));
  List_Properties(Machine(Players))==(TARGET_STATE: FIN(INTEGER) & not(TARGET_STATE = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Players),Machine(Shared))==(?);
  Seen_Context_List_Enumerated(Machine(Players))==(?);
  Seen_Context_List_Invariant(Machine(Players))==(btrue);
  Seen_Context_List_Assertions(Machine(Players))==(btrue);
  Seen_Context_List_Properties(Machine(Players))==(btrue);
  Seen_List_Constraints(Machine(Players))==(btrue);
  Seen_List_Operations(Machine(Players),Machine(Shared))==(?);
  Seen_Expanded_List_Invariant(Machine(Players),Machine(Shared))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Players),resetFleets)==(?);
  List_ANY_Var(Machine(Players),shipsLeft)==(?);
  List_ANY_Var(Machine(Players),startDeployFleet)==(?);
  List_ANY_Var(Machine(Players),startPlayerShoots)==(?);
  List_ANY_Var(Machine(Players),shotsTaken)==(?);
  List_ANY_Var(Machine(Players),shipLocations)==(?);
  List_ANY_Var(Machine(Players),resetPlayer)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Players)) == (TARGET_STATE,Hit,Miss,Already_Fired,Error_Invalid_Target | fleet_size,MESSAGE,Error_Some_positions_are_outside_the_grid,Error_Incorrect_fleet_size,Error_Fleets_already_deployed,Successfully_fleet_deployed | shots_missed,shots_taken,shots_hit,current_player | V,player2_fleet,player1_fleet | startPlayerShoots,shotsTaken,shipLocations,resetPlayer | startDeployFleet,shipsLeft,resetFleets | seen(Machine(Shared)),included(Machine(PlayerFleet)) | ? | Players);
  List_Of_HiddenCst_Ids(Machine(Players)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Players)) == (fleet_size);
  List_Of_VisibleVar_Ids(Machine(Players)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Players)) == (seen(Machine(Shared)): (xx,yy,grid_size,grid,GAME_STATE,PLAYERS,Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won,Player1,Player2 | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(PlayerFleet)) == (fleet_size,MESSAGE,Error_Some_positions_are_outside_the_grid,Error_Incorrect_fleet_size,Error_Fleets_already_deployed,Successfully_fleet_deployed | ? | player2_fleet,player1_fleet | ? | startDeployFleet,removeShip,shipsLeft,resetFleets | ? | seen(Machine(Shared)) | ? | PlayerFleet);
  List_Of_HiddenCst_Ids(Machine(PlayerFleet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PlayerFleet)) == (fleet_size);
  List_Of_VisibleVar_Ids(Machine(PlayerFleet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PlayerFleet)) == (?: ?);
  List_Of_Ids(Machine(Shared)) == (xx,yy,grid_size,grid,GAME_STATE,PLAYERS,Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won,Player1,Player2 | ? | ? | ? | ? | ? | ? | ? | Shared);
  List_Of_HiddenCst_Ids(Machine(Shared)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Shared)) == (xx,yy,grid_size,grid);
  List_Of_VisibleVar_Ids(Machine(Shared)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Shared)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Players)) == (Type(MESSAGE) == Cst(SetOf(etype(MESSAGE,0,3)));Type(TARGET_STATE) == Cst(SetOf(etype(TARGET_STATE,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Players)) == (Type(fleet_size) == Cst(btype(INTEGER,?,?));Type(Successfully_fleet_deployed) == Cst(etype(MESSAGE,0,3));Type(Error_Fleets_already_deployed) == Cst(etype(MESSAGE,0,3));Type(Error_Incorrect_fleet_size) == Cst(etype(MESSAGE,0,3));Type(Error_Some_positions_are_outside_the_grid) == Cst(etype(MESSAGE,0,3));Type(Hit) == Cst(etype(TARGET_STATE,0,3));Type(Miss) == Cst(etype(TARGET_STATE,0,3));Type(Already_Fired) == Cst(etype(TARGET_STATE,0,3));Type(Error_Invalid_Target) == Cst(etype(TARGET_STATE,0,3)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Players)) == (Type(player1_fleet) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(player2_fleet) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(shots_missed) == Mvl(SetOf(etype(PLAYERS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(shots_taken) == Mvl(SetOf(etype(PLAYERS,0,1)*btype(INTEGER,0,MAXINT)));Type(shots_hit) == Mvl(SetOf(etype(PLAYERS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(current_player) == Mvl(etype(PLAYERS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Players)) == (Type(startDeployFleet) == Cst(etype(MESSAGE,?,?),etype(PLAYERS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(shipsLeft) == Cst(btype(INTEGER,?,?),No_type);Type(resetFleets) == Cst(No_type,No_type);Type(resetPlayer) == Cst(No_type,No_type);Type(shipLocations) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),etype(PLAYERS,?,?));Type(shotsTaken) == Cst(btype(INTEGER,?,?),etype(PLAYERS,?,?));Type(startPlayerShoots) == Cst(etype(TARGET_STATE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Players)) == (Type(shipsLeft) == Cst(btype(INTEGER,?,?),No_type);Type(shipLocations) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),etype(PLAYERS,?,?));Type(shotsTaken) == Cst(btype(INTEGER,?,?),etype(PLAYERS,?,?)))
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
