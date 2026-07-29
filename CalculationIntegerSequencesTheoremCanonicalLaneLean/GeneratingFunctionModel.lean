import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.RecurrenceOperator

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure GeneratingFunctionModelPackage {P : IntegerSequencePackage}
    (R : RecurrenceOperatorPackage P) where
  generatingFunction : ℤ → ℤ
  radiusOfConvergence : ℝ
  seriesExpansion : ℕ → ℤ
  expansionMatchesSequence : Prop
  modelProperties : Prop

structure GeneratingFunctionModelEvidence {P : IntegerSequencePackage}
    {R : RecurrenceOperatorPackage P}
    (G : GeneratingFunctionModelPackage R) where
  expansionMatchesSequenceClosed : G.expansionMatchesSequence
  modelPropertiesClosed : G.modelProperties

def GeneratingFunctionModelClosed {P : IntegerSequencePackage}
    {R : RecurrenceOperatorPackage P}
    (G : GeneratingFunctionModelPackage R) : Prop :=
  G.expansionMatchesSequence ∧ G.modelProperties

theorem generating_function_model_closed_from_evidence
    {P : IntegerSequencePackage} {R : RecurrenceOperatorPackage P}
    (G : GeneratingFunctionModelPackage R)
    (E : GeneratingFunctionModelEvidence G) : GeneratingFunctionModelClosed G := by
  exact And.intro E.expansionMatchesSequenceClosed E.modelPropertiesClosed

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse