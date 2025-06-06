Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BattleShipControl))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BattleShipControl))==(Machine(BattleShipControl));
  Level(Machine(BattleShipControl))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BattleShipControl)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BattleShipControl))==(Shared)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BattleShipControl))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BattleShipControl))==(?);
  List_Includes(Machine(BattleShipControl))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BattleShipControl))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BattleShipControl))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BattleShipControl))==(?);
  Context_List_Variables(Machine(BattleShipControl))==(?);
  Abstract_List_Variables(Machine(BattleShipControl))==(?);
  Local_List_Variables(Machine(BattleShipControl))==(game_state);
  List_Variables(Machine(BattleShipControl))==(game_state);
  External_List_Variables(Machine(BattleShipControl))==(game_state)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BattleShipControl))==(?);
  Abstract_List_VisibleVariables(Machine(BattleShipControl))==(?);
  External_List_VisibleVariables(Machine(BattleShipControl))==(?);
  Expanded_List_VisibleVariables(Machine(BattleShipControl))==(?);
  List_VisibleVariables(Machine(BattleShipControl))==(?);
  Internal_List_VisibleVariables(Machine(BattleShipControl))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BattleShipControl))==(btrue);
  Gluing_List_Invariant(Machine(BattleShipControl))==(btrue);
  Expanded_List_Invariant(Machine(BattleShipControl))==(btrue);
  Abstract_List_Invariant(Machine(BattleShipControl))==(btrue);
  Context_List_Invariant(Machine(BattleShipControl))==(btrue);
  List_Invariant(Machine(BattleShipControl))==(game_state: GAME_STATE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BattleShipControl))==(btrue);
  Abstract_List_Assertions(Machine(BattleShipControl))==(btrue);
  Context_List_Assertions(Machine(BattleShipControl))==(btrue);
  List_Assertions(Machine(BattleShipControl))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BattleShipControl))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BattleShipControl))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BattleShipControl))==(game_state:=Both_players_still_need_to_deploy);
  Context_List_Initialisation(Machine(BattleShipControl))==(skip);
  List_Initialisation(Machine(BattleShipControl))==(game_state:=Both_players_still_need_to_deploy)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BattleShipControl))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(BattleShipControl),Machine(Shared))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BattleShipControl))==(btrue);
  List_Constraints(Machine(BattleShipControl))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BattleShipControl))==(gameStatus,updateGameStatus);
  List_Operations(Machine(BattleShipControl))==(gameStatus,updateGameStatus)
END
&
THEORY ListInputX IS
  List_Input(Machine(BattleShipControl),gameStatus)==(?);
  List_Input(Machine(BattleShipControl),updateGameStatus)==(new_state)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BattleShipControl),gameStatus)==(status);
  List_Output(Machine(BattleShipControl),updateGameStatus)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BattleShipControl),gameStatus)==(status <-- gameStatus);
  List_Header(Machine(BattleShipControl),updateGameStatus)==(updateGameStatus(new_state))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BattleShipControl),gameStatus)==(btrue);
  List_Precondition(Machine(BattleShipControl),updateGameStatus)==(new_state: GAME_STATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BattleShipControl),updateGameStatus)==(new_state: GAME_STATE | game_state:=new_state);
  Expanded_List_Substitution(Machine(BattleShipControl),gameStatus)==(btrue | status:=game_state);
  List_Substitution(Machine(BattleShipControl),gameStatus)==(status:=game_state);
  List_Substitution(Machine(BattleShipControl),updateGameStatus)==(game_state:=new_state)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BattleShipControl))==(?);
  Inherited_List_Constants(Machine(BattleShipControl))==(?);
  List_Constants(Machine(BattleShipControl))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(BattleShipControl),PLAYERS)==({Player1,Player2});
  Context_List_Enumerated(Machine(BattleShipControl))==(GAME_STATE,PLAYERS);
  Context_List_Defered(Machine(BattleShipControl))==(?);
  Context_List_Sets(Machine(BattleShipControl))==(GAME_STATE,PLAYERS);
  List_Valuable_Sets(Machine(BattleShipControl))==(?);
  Inherited_List_Enumerated(Machine(BattleShipControl))==(?);
  Inherited_List_Defered(Machine(BattleShipControl))==(?);
  Inherited_List_Sets(Machine(BattleShipControl))==(?);
  List_Enumerated(Machine(BattleShipControl))==(?);
  List_Defered(Machine(BattleShipControl))==(?);
  List_Sets(Machine(BattleShipControl))==(?);
  Set_Definition(Machine(BattleShipControl),GAME_STATE)==({Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BattleShipControl))==(?);
  Expanded_List_HiddenConstants(Machine(BattleShipControl))==(?);
  List_HiddenConstants(Machine(BattleShipControl))==(?);
  External_List_HiddenConstants(Machine(BattleShipControl))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BattleShipControl))==(btrue);
  Context_List_Properties(Machine(BattleShipControl))==(grid_size = 10 & xx = 1..grid_size & yy = 1..grid_size & grid = xx*yy & GAME_STATE: FIN(INTEGER) & not(GAME_STATE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Machine(BattleShipControl))==(btrue);
  List_Properties(Machine(BattleShipControl))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(BattleShipControl),Machine(Shared))==(?);
  Seen_Context_List_Enumerated(Machine(BattleShipControl))==(?);
  Seen_Context_List_Invariant(Machine(BattleShipControl))==(btrue);
  Seen_Context_List_Assertions(Machine(BattleShipControl))==(btrue);
  Seen_Context_List_Properties(Machine(BattleShipControl))==(btrue);
  Seen_List_Constraints(Machine(BattleShipControl))==(btrue);
  Seen_List_Operations(Machine(BattleShipControl),Machine(Shared))==(?);
  Seen_Expanded_List_Invariant(Machine(BattleShipControl),Machine(Shared))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BattleShipControl),gameStatus)==(?);
  List_ANY_Var(Machine(BattleShipControl),updateGameStatus)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BattleShipControl)) == (? | ? | game_state | ? | gameStatus,updateGameStatus | ? | seen(Machine(Shared)) | ? | BattleShipControl);
  List_Of_HiddenCst_Ids(Machine(BattleShipControl)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BattleShipControl)) == (?);
  List_Of_VisibleVar_Ids(Machine(BattleShipControl)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BattleShipControl)) == (?: ?);
  List_Of_Ids(Machine(Shared)) == (xx,yy,grid_size,grid,GAME_STATE,PLAYERS,Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won,Player1,Player2 | ? | ? | ? | ? | ? | ? | ? | Shared);
  List_Of_HiddenCst_Ids(Machine(Shared)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Shared)) == (xx,yy,grid_size,grid);
  List_Of_VisibleVar_Ids(Machine(Shared)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Shared)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(BattleShipControl)) == (Type(game_state) == Mvl(etype(GAME_STATE,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BattleShipControl)) == (Type(updateGameStatus) == Cst(No_type,etype(GAME_STATE,?,?));Type(gameStatus) == Cst(etype(GAME_STATE,?,?),No_type));
  Observers(Machine(BattleShipControl)) == (Type(gameStatus) == Cst(etype(GAME_STATE,?,?),No_type))
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
