import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure RecurrenceRelationPackage where
  linearRecurrence : Prop
  characteristicPolynomial : Prop
  closedFormSolvable : Prop
  initialConditionsSatisfied : Prop

structure RecurrenceRelationEvidence (R : RecurrenceRelationPackage) where
  linearRecurrenceClosed : R.linearRecurrence
  characteristicPolynomialClosed : R.characteristicPolynomial
  closedFormSolvableClosed : R.closedFormSolvable
  initialConditionsSatisfiedClosed : R.initialConditionsSatisfied

def RecurrenceRelationClosed (R : RecurrenceRelationPackage) : Prop :=
  R.linearRecurrence ∧ R.characteristicPolynomial ∧
  R.closedFormSolvable ∧ R.initialConditionsSatisfied

theorem recurrence_relation_closed_from_evidence (R : RecurrenceRelationPackage)
    (E : RecurrenceRelationEvidence R) : RecurrenceRelationClosed R := by
  exact And.intro E.linearRecurrenceClosed (And.intro E.characteristicPolynomialClosed (And.intro E.closedFormSolvableClosed E.initialConditionsSatisfiedClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse