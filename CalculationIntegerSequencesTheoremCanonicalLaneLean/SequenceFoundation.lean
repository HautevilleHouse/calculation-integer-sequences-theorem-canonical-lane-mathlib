import CalculationIntegerSequencesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure IntegerSequenceFoundation where
  sequenceType : Type u
  initialTerms : List ℤ
  integerValued : Prop
  wellDefinedRecurrence : Prop

structure IntegerSequenceFoundationEvidence (F : IntegerSequenceFoundation) where
  integerValuedClosed : F.integerValued
  wellDefinedRecurrenceClosed : F.wellDefinedRecurrence

def IntegerSequenceFoundationClosed (F : IntegerSequenceFoundation) : Prop :=
  F.integerValued ∧ F.wellDefinedRecurrence

theorem integer_sequence_foundation_closed_from_evidence
    (F : IntegerSequenceFoundation) (E : IntegerSequenceFoundationEvidence F) :
    IntegerSequenceFoundationClosed F := by
  exact And.intro E.integerValuedClosed E.wellDefinedRecurrenceClosed

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse