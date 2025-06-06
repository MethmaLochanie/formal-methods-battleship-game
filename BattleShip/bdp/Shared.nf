Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Shared))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Shared))==(Machine(Shared));
  Level(Machine(Shared))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Shared)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Shared))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Shared))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Shared))==(?);
  List_Includes(Machine(Shared))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Shared))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Shared))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Shared))==(?);
  Context_List_Variables(Machine(Shared))==(?);
  Abstract_List_Variables(Machine(Shared))==(?);
  Local_List_Variables(Machine(Shared))==(?);
  List_Variables(Machine(Shared))==(?);
  External_List_Variables(Machine(Shared))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Shared))==(?);
  Abstract_List_VisibleVariables(Machine(Shared))==(?);
  External_List_VisibleVariables(Machine(Shared))==(?);
  Expanded_List_VisibleVariables(Machine(Shared))==(?);
  List_VisibleVariables(Machine(Shared))==(?);
  Internal_List_VisibleVariables(Machine(Shared))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Shared))==(btrue);
  Gluing_List_Invariant(Machine(Shared))==(btrue);
  Expanded_List_Invariant(Machine(Shared))==(btrue);
  Abstract_List_Invariant(Machine(Shared))==(btrue);
  Context_List_Invariant(Machine(Shared))==(btrue);
  List_Invariant(Machine(Shared))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Shared))==(btrue);
  Abstract_List_Assertions(Machine(Shared))==(btrue);
  Context_List_Assertions(Machine(Shared))==(btrue);
  List_Assertions(Machine(Shared))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Shared))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Shared))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Shared))==(skip);
  Context_List_Initialisation(Machine(Shared))==(skip);
  List_Initialisation(Machine(Shared))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Shared))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Shared))==(btrue);
  List_Constraints(Machine(Shared))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Shared))==(?);
  List_Operations(Machine(Shared))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Shared))==(xx,yy,grid_size,grid);
  Inherited_List_Constants(Machine(Shared))==(?);
  List_Constants(Machine(Shared))==(xx,yy,grid_size,grid)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Shared),GAME_STATE)==({Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won});
  Context_List_Enumerated(Machine(Shared))==(?);
  Context_List_Defered(Machine(Shared))==(?);
  Context_List_Sets(Machine(Shared))==(?);
  List_Valuable_Sets(Machine(Shared))==(?);
  Inherited_List_Enumerated(Machine(Shared))==(?);
  Inherited_List_Defered(Machine(Shared))==(?);
  Inherited_List_Sets(Machine(Shared))==(?);
  List_Enumerated(Machine(Shared))==(GAME_STATE,PLAYERS);
  List_Defered(Machine(Shared))==(?);
  List_Sets(Machine(Shared))==(GAME_STATE,PLAYERS);
  Set_Definition(Machine(Shared),PLAYERS)==({Player1,Player2})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Shared))==(?);
  Expanded_List_HiddenConstants(Machine(Shared))==(?);
  List_HiddenConstants(Machine(Shared))==(?);
  External_List_HiddenConstants(Machine(Shared))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Shared))==(btrue);
  Context_List_Properties(Machine(Shared))==(btrue);
  Inherited_List_Properties(Machine(Shared))==(btrue);
  List_Properties(Machine(Shared))==(grid_size = 10 & xx = 1..grid_size & yy = 1..grid_size & grid = xx*yy & GAME_STATE: FIN(INTEGER) & not(GAME_STATE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Shared)) == (xx,yy,grid_size,grid,GAME_STATE,PLAYERS,Ongoing,Both_players_still_need_to_deploy,Game_Over_Player2_won,Game_Over_Player1_won,Player1,Player2 | ? | ? | ? | ? | ? | ? | ? | Shared);
  List_Of_HiddenCst_Ids(Machine(Shared)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Shared)) == (xx,yy,grid_size,grid);
  List_Of_VisibleVar_Ids(Machine(Shared)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Shared)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Shared)) == (Type(GAME_STATE) == Cst(SetOf(etype(GAME_STATE,0,3)));Type(PLAYERS) == Cst(SetOf(etype(PLAYERS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Shared)) == (Type(Ongoing) == Cst(etype(GAME_STATE,0,3));Type(Both_players_still_need_to_deploy) == Cst(etype(GAME_STATE,0,3));Type(Game_Over_Player2_won) == Cst(etype(GAME_STATE,0,3));Type(Game_Over_Player1_won) == Cst(etype(GAME_STATE,0,3));Type(Player1) == Cst(etype(PLAYERS,0,1));Type(Player2) == Cst(etype(PLAYERS,0,1));Type(xx) == Cst(SetOf(btype(INTEGER,"[xx","]xx")));Type(yy) == Cst(SetOf(btype(INTEGER,"[yy","]yy")));Type(grid_size) == Cst(btype(INTEGER,?,?));Type(grid) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
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
