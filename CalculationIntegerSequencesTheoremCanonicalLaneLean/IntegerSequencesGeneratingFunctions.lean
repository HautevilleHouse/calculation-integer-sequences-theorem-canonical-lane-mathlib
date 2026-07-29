import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequencesRecurrence

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure GeneratingFunction where
  rational : Prop
  numerator : ℤ[X]
  denominator : ℤ[X]
  expansionMatches : Prop

def GeneratingFunctionClosed (G : GeneratingFunction) : Prop :=
  G.rational ∧ G.expansionMatches

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse
