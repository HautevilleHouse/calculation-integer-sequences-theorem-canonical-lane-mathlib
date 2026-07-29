import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequenceCore

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure RecurrenceOperatorPackage (P : IntegerSequencePackage) where
  recurrenceFormula : ℕ → ℤ
  characteristicPolynomial : Polynomial ℤ
  explicitFormula : ℕ → ℤ
  formulaMatches : Prop
  operatorProperties : Prop

structure RecurrenceOperatorEvidence {P : IntegerSequencePackage}
    (R : RecurrenceOperatorPackage P) where
  formulaMatchesClosed : R.formulaMatches
  operatorPropertiesClosed : R.operatorProperties

def RecurrenceOperatorClosed {P : IntegerSequencePackage}
    (R : RecurrenceOperatorPackage P) : Prop :=
  R.formulaMatches ∧ R.operatorProperties

theorem recurrence_operator_closed_from_evidence {P : IntegerSequencePackage}
    (R : RecurrenceOperatorPackage P) (E : RecurrenceOperatorEvidence R) :
    RecurrenceOperatorClosed R := by
  exact And.intro E.formulaMatchesClosed E.operatorPropertiesClosed

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse