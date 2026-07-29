import CalculationIntegerSequencesTheoremCanonicalLaneLean.SequenceConvergence

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure LimitClassificationPackage (O : SeqAdmittedObject) (C : ConvergencePackage O) where
  limitValue : ℤ
  limitAttained : Prop
  limitClassification : Prop

structure LimitClassificationEvidence (O : SeqAdmittedObject) (C : ConvergencePackage O) (L : LimitClassificationPackage O C) where
  limitAttainedClosed : L.limitAttained
  limitClassificationClosed : L.limitClassification

def LimitClassificationClosed (O : SeqAdmittedObject) (C : ConvergencePackage O) (L : LimitClassificationPackage O C) : Prop :=
  L.limitAttained ∧ L.limitClassification

theorem limit_classification_closed_from_evidence (O : SeqAdmittedObject) (C : ConvergencePackage O) (L : LimitClassificationPackage O C) (E : LimitClassificationEvidence O C L) : LimitClassificationClosed O C L := by
  exact And.intro E.limitAttainedClosed E.limitClassificationClosed

theorem limit_classification_supplies_limit_value (O : SeqAdmittedObject) (C : ConvergencePackage O) (L : LimitClassificationPackage O C) : ℤ := L.limitValue

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse