import CalculationIntegerSequencesTheoremCanonicalLaneLean.RecurrenceStructure

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure GeneratingFunctionPackage {F : IntegerSequenceFoundation} {R : RecurrenceStructure F} where
  formalPowerSeries : Type u
  closedFormExpression : Prop
  rationalFunction : Prop

structure GeneratingFunctionEvidence {F : IntegerSequenceFoundation} {R : RecurrenceStructure F} (G : GeneratingFunctionPackage F R) where
  closedFormExpressionClosed : G.closedFormExpression
  rationalFunctionClosed : G.rationalFunction

def GeneratingFunctionClosed {F : IntegerSequenceFoundation} {R : RecurrenceStructure F} (G : GeneratingFunctionPackage F R) : Prop :=
  G.closedFormExpression ∧ G.rationalFunction

theorem generating_function_closed_from_evidence
    {F : IntegerSequenceFoundation} {R : RecurrenceStructure F} (G : GeneratingFunctionPackage F R) (E : GeneratingFunctionEvidence G) :
    GeneratingFunctionClosed G := by
  exact And.intro E.closedFormExpressionClosed E.rationalFunctionClosed

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse