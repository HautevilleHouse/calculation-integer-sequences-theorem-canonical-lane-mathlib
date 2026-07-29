import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.SequenceSourcePackage

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  []

def sourcePathDependencies : List SourcePathDependency :=
  []

def sourceImportDependencyCount : Nat := 0
def sourceRuntimeModuleCount : Nat := 0
def sourcePathDependencyCount : Nat := 0

theorem source_import_dependency_count_checked :
    sourceImportDependencies.length = 0 := by
  rfl

theorem source_path_dependency_count_checked :
    sourcePathDependencies.length = 0 := by
  rfl

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse