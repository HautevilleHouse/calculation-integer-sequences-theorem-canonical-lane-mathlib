import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequenceCore

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure GeneratingFunction (I : IntegerSequenceCore) where
  functionType : Type
  powerSeries : Prop
  radiusOfConvergence : Prop
  closedFormExpression : Prop
  functionalEquation : Prop

structure GeneratingFunctionEvidence {I : IntegerSequenceCore} (G : GeneratingFunction I) where
  powerSeriesClosed : G.powerSeries
  radiusOfConvergenceClosed : G.radiusOfConvergence
  closedFormExpressionClosed : G.closedFormExpression
  functionalEquationClosed : G.functionalEquation

def GeneratingFunctionClosed {I : IntegerSequenceCore} (G : GeneratingFunction I) : Prop :=
  G.powerSeries ∧ G.radiusOfConvergence ∧ G.closedFormExpression ∧ G.functionalEquation

theorem generating_function_closed_from_evidence
    {I : IntegerSequenceCore} (G : GeneratingFunction I) (E : GeneratingFunctionEvidence G) :
    GeneratingFunctionClosed G := by
  exact And.intro E.powerSeriesClosed
    (And.intro E.radiusOfConvergenceClosed
      (And.intro E.closedFormExpressionClosed E.functionalEquationClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse