import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequencesGeneratingFunctions

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure IntegerSequencesProofObligations where
  recurrenceClosed : Prop
  generatingFunctionClosed : Prop
  monotonicity : Prop
  asymptoticBound : Prop

theorem obligations_entail_closure (O : IntegerSequencesProofObligations) :
    O.recurrenceClosed ∧ O.generatingFunctionClosed ∧ O.monotonicity ∧ O.asymptoticBound := by
  exact And.intro O.recurrenceClosed (And.intro O.generatingFunctionClosed (And.intro O.monotonicity O.asymptoticBound))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse
