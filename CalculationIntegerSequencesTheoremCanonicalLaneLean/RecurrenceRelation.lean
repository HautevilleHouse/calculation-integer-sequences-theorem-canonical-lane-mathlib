import CalculationIntegerSequencesTheoremCanonicalLaneLean.LimitClassification

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure RecurrenceRelationPackage (O : SeqAdmittedObject) (C : ConvergencePackage O) (L : LimitClassificationPackage O C) where
  recurrenceOrder : ℕ
  recurrenceEquation : ℤ → ℤ → ℤ
  characteristicPolynomialRoots : Prop
  closedFormExists : Prop

structure RecurrenceRelationEvidence (O : SeqAdmittedObject) (C : ConvergencePackage O) (L : LimitClassificationPackage O C) (R : RecurrenceRelationPackage O C L) where
  recurrenceEquationClosed : R.recurrenceEquation = R.recurrenceEquation
  characteristicPolynomialRootsClosed : R.characteristicPolynomialRoots
  closedFormExistsClosed : R.closedFormExists

def RecurrenceRelationClosed (O : SeqAdmittedObject) (C : ConvergencePackage O) (L : LimitClassificationPackage O C) (R : RecurrenceRelationPackage O C L) : Prop :=
  R.characteristicPolynomialRoots ∧ R.closedFormExists

theorem recurrence_relation_closed_from_evidence (O : SeqAdmittedObject) (C : ConvergencePackage O) (L : LimitClassificationPackage O C) (R : RecurrenceRelationPackage O C L) (E : RecurrenceRelationEvidence O C L R) : RecurrenceRelationClosed O C L R := by
  exact And.intro E.characteristicPolynomialRootsClosed E.closedFormExistsClosed

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse