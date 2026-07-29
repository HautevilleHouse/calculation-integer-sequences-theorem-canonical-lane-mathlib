namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "0000000000000000000000000000000000000000"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  []

def sourceFunctions : List SourceFunctionDecl :=
  []

def sourceClasses : List SourceClassDecl :=
  []

def sourceAssignments : List SourceAssignmentDecl :=
  []

def sourceRepository : String := "calculation-integer-sequences"
def sourceDescription : String := "Calculation Integer Sequences Theorem"

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse