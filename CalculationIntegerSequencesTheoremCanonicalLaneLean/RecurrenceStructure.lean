import CalculationIntegerSequencesTheoremCanonicalLaneLean.SequenceFoundation

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure RecurrenceStructure (F : IntegerSequenceFoundation) where
  recurrenceOrder : ℕ
  recurrenceCoefficients : List ℤ
  recurrenceRelation : Prop
  characteristicPolynomial : Prop

structure RecurrenceStructureEvidence {F : IntegerSequenceFoundation} (R : RecurrenceStructure F) where
  recurrenceRelationClosed : R.recurrenceRelation
  characteristicPolynomialClosed : R.characteristicPolynomial

def RecurrenceClosed {F : IntegerSequenceFoundation} (R : RecurrenceStructure F) : Prop :=
  R.recurrenceRelation ∧ R.characteristicPolynomial

theorem recurrence_closed_from_evidence
    {F : IntegerSequenceFoundation} (R : RecurrenceStructure F) (E : RecurrenceStructureEvidence R) :
    RecurrenceClosed R := by
  exact And.intro E.recurrenceRelationClosed E.characteristicPolynomialClosed

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse