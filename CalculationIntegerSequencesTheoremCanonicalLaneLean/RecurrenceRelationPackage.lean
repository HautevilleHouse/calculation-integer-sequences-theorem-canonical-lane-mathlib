import CalculationIntegerSequencesTheoremCanonicalLaneLean.AdmissibleSequence

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure RecurrenceRelationPackage (A : AdmissibleSequence) where
  order : ℕ
  initialTerms : Fin order → ℕ
  homogeneousPart : (ℕ → ℕ) → ℕ → ℕ
  particularSolution : ℕ → ℕ
  recurrenceValid : Prop
  initialConditionsValid : Prop
  particularCorrect : Prop

structure RecurrenceRelationEvidence {A : AdmissibleSequence} (R : RecurrenceRelationPackage A) where
  recurrenceValidClosed : R.recurrenceValid
  initialConditionsValidClosed : R.initialConditionsValid
  particularCorrectClosed : R.particularCorrect

def RecurrenceRelationClosed {A : AdmissibleSequence} (R : RecurrenceRelationPackage A) : Prop :=
  R.recurrenceValid ∧ R.initialConditionsValid ∧ R.particularCorrect

theorem recurrence_relation_closed_from_evidence {A : AdmissibleSequence}
    (R : RecurrenceRelationPackage A) (E : RecurrenceRelationEvidence R) : RecurrenceRelationClosed R :=
  And.intro E.recurrenceValidClosed (And.intro E.initialConditionsValidClosed E.particularCorrectClosed)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse