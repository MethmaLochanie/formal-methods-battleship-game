Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PlayerFleet))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PlayerFleet))==(Machine(PlayerFleet));
  Level(Machine(PlayerFleet))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PlayerFleet)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PlayerFleet))==(Shared)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PlayerFleet))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PlayerFleet))==(?);
  List_Includes(Machine(PlayerFleet))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PlayerFleet))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PlayerFleet))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PlayerFleet))==(?);
  Context_List_Variables(Machine(PlayerFleet))==(?);
  Abstract_List_Variables(Machine(PlayerFleet))==(?);
  Local_List_Variables(Machine(PlayerFleet))==(player2_fleet,player1_fleet);
  List_Variables(Machine(PlayerFleet))==(player2_fleet,player1_fleet);
  External_List_Variables(Machine(PlayerFleet))==(player2_fleet,player1_fleet)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PlayerFleet))==(?);
  Abstract_List_VisibleVariables(Machine(PlayerFleet))==(?);
  External_List_VisibleVariables(Machine(PlayerFleet))==(?);
  Expanded_List_VisibleVariables(Machine(PlayerFleet))==(?);
  List_VisibleVariables(Machine(PlayerFleet))==(?);
  Internal_List_VisibleVariables(Machine(PlayerFleet))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PlayerFleet))==(btrue);
  Gluing_List_Invariant(Machine(PlayerFleet))==(btrue);
  Expanded_List_Invariant(Machine(PlayerFleet))==(btrue);
  Abstract_List_Invariant(Machine(PlayerFleet))==(btrue);
  Context_List_Invariant(Machine(PlayerFleet))==(btrue);
  List_Invariant(Machine(PlayerFleet))==(player1_fleet: POW(grid) & player2_fleet: POW(grid))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(PlayerFleet))==(btrue);
  Abstract_List_Assertions(Machine(PlayerFleet))==(btrue);
  Context_List_Assertions(Machine(PlayerFleet))==(btrue);
  List_Assertions(Machine(PlayerFleet))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PlayerFleet))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PlayerFleet))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PlayerFleet))==(player1_fleet,player2_fleet:={},{});
  Context_List_Initialisation(Machine(PlayerFleet))==(skip);
  List_Initialisation(Machine(PlayerFleet))==(player1_fleet:={} || player2_fleet:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PlayerFleet))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(PlayerFleet),Machine(Shared))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PlayerFleet))==(btrue);
  List_Constraints(Machine(PlayerFleet))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PlayerFleet))==(startDeployFleet,removeShip,shipsLeft,resetFleets);
  List_Operations(Machine(PlayerFleet))==(startDeployFleet,removeShip,shipsLeft,resetFleets)
END
&
THEORY ListInputX IS
  List_Input(Machine(PlayerFleet),startDeployFleet)==(player,shipPositions);
  List_Input(Machine(PlayerFleet),removeShip)==(player,ship_position);
  List_Input(Machine(PlayerFleet),shipsLeft)==(?);
  List_Input(Machine(PlayerFleet),resetFleets)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PlayerFleet),startDeployFleet)==(report);
  List_Output(Machine(PlayerFleet),removeShip)==(?);
  List_Output(Machine(PlayerFleet),shipsLeft)==(shipCounts);
  List_Output(Machine(PlayerFleet),resetFleets)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PlayerFleet),startDeployFleet)==(report <-- startDeployFleet(player,shipPositions));
  List_Header(Machine(PlayerFleet),removeShip)==(removeShip(player,ship_position));
  List_Header(Machine(PlayerFleet),shipsLeft)==(shipCounts <-- shipsLeft);
  List_Header(Machine(PlayerFleet),resetFleets)==(resetFleets)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(PlayerFleet),startDeployFleet)==(player: PLAYERS & shipPositions <: grid & card(shipPositions) = fleet_size);
  List_Precondition(Machine(PlayerFleet),removeShip)==(player: PLAYERS & ship_position: grid & (player = Player1 => ship_position: player1_fleet) & (player = Player2 => ship_position: player2_fleet));
  List_Precondition(Machine(PlayerFleet),shipsLeft)==(btrue);
  List_Precondition(Machine(PlayerFleet),resetFleets)==(player1_fleet = {} or player2_fleet = {})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(PlayerFleet),resetFleets)==(player1_fleet = {} or player2_fleet = {} | player1_fleet,player2_fleet:={},{});
  Expanded_List_Substitution(Machine(PlayerFleet),shipsLeft)==(btrue | shipCounts:=card(player1_fleet)+card(player2_fleet));
  Expanded_List_Substitution(Machine(PlayerFleet),removeShip)==(player: PLAYERS & ship_position: grid & (player = Player1 => ship_position: player1_fleet) & (player = Player2 => ship_position: player2_fleet) | player = Player1 ==> player1_fleet:=player1_fleet-{ship_position} [] not(player = Player1) ==> (player = Player2 ==> player2_fleet:=player2_fleet-{ship_position} [] not(player = Player2) ==> skip));
  Expanded_List_Substitution(Machine(PlayerFleet),startDeployFleet)==(player: PLAYERS & shipPositions <: grid & card(shipPositions) = fleet_size | shipPositions /<: grid ==> report:=Error_Some_positions_are_outside_the_grid [] not(shipPositions /<: grid) ==> (card(shipPositions)/=fleet_size ==> report:=Error_Incorrect_fleet_size [] not(card(shipPositions)/=fleet_size) ==> (player1_fleet/={} & player2_fleet/={} ==> report:=Error_Fleets_already_deployed [] not(player1_fleet/={} & player2_fleet/={}) ==> (player = Player1 & player1_fleet = {} ==> player1_fleet,report:=shipPositions,Successfully_fleet_deployed [] not(player = Player1 & player1_fleet = {}) ==> (player = Player2 & player2_fleet = {} ==> player2_fleet,report:=shipPositions,Successfully_fleet_deployed [] not(player = Player2 & player2_fleet = {}) ==> skip)))));
  List_Substitution(Machine(PlayerFleet),startDeployFleet)==(IF shipPositions /<: grid THEN report:=Error_Some_positions_are_outside_the_grid ELSIF card(shipPositions)/=fleet_size THEN report:=Error_Incorrect_fleet_size ELSIF player1_fleet/={} & player2_fleet/={} THEN report:=Error_Fleets_already_deployed ELSE IF player = Player1 & player1_fleet = {} THEN player1_fleet:=shipPositions || report:=Successfully_fleet_deployed ELSIF player = Player2 & player2_fleet = {} THEN player2_fleet:=shipPositions || report:=Successfully_fleet_deployed END END);
  List_Substitution(Machine(PlayerFleet),removeShip)==(IF player = Player1 THEN player1_fleet:=player1_fleet-{ship_position} ELSIF player = Player2 THEN player2_fleet:=player2_fleet-{ship_position} END);
  List_Substitution(Machine(PlayerFleet),shipsLeft)==(shipCounts:=card(player1_fleet)+card(player2_fleet));
  List_Substitution(Machine(PlayerFleet),resetFleets)==(player1_fleet:={} || player2_fleet:={})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PlayerFleet))==(fleet_size);
  Inherited_List_Constants(Machine(PlayerFleet))==(?);
  List_Constants(Machine(PlayerFleet))==(fleet_size)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(PlayerFleet),PLAYERS)==({Player1,Player2});
  Context_List_Enumerated(Machine(PlayerFleet))==(GAME_STATE,PLAYERS);
  Context_List_Defered(Machine(PlayerFleet))==(?);
  Context_List_Sets(Machine(PlayerFleet))==(GAME_STATE,PLAYERS);
  List_Valuable_Sets(Machine(PlayerFleet))==(?);
  Inherited_List_Enumerated(Machine(PlayerFleet))==(?);
  Inherited_List_Defered(Machine(PlayerFleet))==(?);
  Inherited_List_Sets(Machine(PlayerFleet))==(?);
  List_Enumerated(Machine(PlayerFleet))==(MESSAGE);
  List_Defered(Machine(PlayerFleet))==(?);
  List_Sets(Machine(PlayerFleet))==(MESSAGE);
  Set_Definition(Machine(PlayerFleet),GAME_STATE)==({Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won});
  Set_Definition(Machine(PlayerFleet),MESSAGE)==({Error_Some_positions_are_outside_the_grid,Error_Incorrect_fleet_size,Error_Fleets_already_deployed,Successfully_fleet_deployed})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PlayerFleet))==(?);
  Expanded_List_HiddenConstants(Machine(PlayerFleet))==(?);
  List_HiddenConstants(Machine(PlayerFleet))==(?);
  External_List_HiddenConstants(Machine(PlayerFleet))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PlayerFleet))==(btrue);
  Context_List_Properties(Machine(PlayerFleet))==(grid_size = 10 & xx = 1..grid_size & yy = 1..grid_size & grid = xx*yy & GAME_STATE: FIN(INTEGER) & not(GAME_STATE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Machine(PlayerFleet))==(btrue);
  List_Properties(Machine(PlayerFleet))==(fleet_size = 3 & MESSAGE: FIN(INTEGER) & not(MESSAGE = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(PlayerFleet),Machine(Shared))==(?);
  Seen_Context_List_Enumerated(Machine(PlayerFleet))==(?);
  Seen_Context_List_Invariant(Machine(PlayerFleet))==(btrue);
  Seen_Context_List_Assertions(Machine(PlayerFleet))==(btrue);
  Seen_Context_List_Properties(Machine(PlayerFleet))==(btrue);
  Seen_List_Constraints(Machine(PlayerFleet))==(btrue);
  Seen_List_Operations(Machine(PlayerFleet),Machine(Shared))==(?);
  Seen_Expanded_List_Invariant(Machine(PlayerFleet),Machine(Shared))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PlayerFleet),startDeployFleet)==(?);
  List_ANY_Var(Machine(PlayerFleet),removeShip)==(?);
  List_ANY_Var(Machine(PlayerFleet),shipsLeft)==(?);
  List_ANY_Var(Machine(PlayerFleet),resetFleets)==(?)
END
&
THEORY ListOfIdsX IS
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
  Sets(Machine(PlayerFleet)) == (Type(MESSAGE) == Cst(SetOf(etype(MESSAGE,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(PlayerFleet)) == (Type(Error_Some_positions_are_outside_the_grid) == Cst(etype(MESSAGE,0,3));Type(Error_Incorrect_fleet_size) == Cst(etype(MESSAGE,0,3));Type(Error_Fleets_already_deployed) == Cst(etype(MESSAGE,0,3));Type(Successfully_fleet_deployed) == Cst(etype(MESSAGE,0,3));Type(fleet_size) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(PlayerFleet)) == (Type(player2_fleet) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(player1_fleet) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PlayerFleet)) == (Type(resetFleets) == Cst(No_type,No_type);Type(shipsLeft) == Cst(btype(INTEGER,?,?),No_type);Type(removeShip) == Cst(No_type,etype(PLAYERS,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(startDeployFleet) == Cst(etype(MESSAGE,?,?),etype(PLAYERS,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));
  Observers(Machine(PlayerFleet)) == (Type(shipsLeft) == Cst(btype(INTEGER,?,?),No_type))
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
