import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.RecurrenceClosure

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure ClosedFormClassification (I : IntegerSequenceCore) (R : RecurrenceClosure I) where
  closedFormExists : Prop
  closedFormType : String
  parametersSolved : Prop
  uniquenessProof : Prop

structure ClosedFormClassificationEvidence {I : IntegerSequenceCore} {R : RecurrenceClosure I}
    (C : ClosedFormClassification I R) where
  closedFormExistsClosed : C.closedFormExists
  closedFormTypeIdentified : C.closedFormType ≠ ""
  parametersSolvedClosed : C.parametersSolved
  uniquenessProofClosed : C.uniquenessProof

def ClosedFormClassificationClosed {I : IntegerSequenceCore} {R : RecurrenceClosure I}
    (C : ClosedFormClassification I R) : Prop :=
  C.closedFormExists ∧ C.closedFormType ≠ "" ∧ C.parametersSolved ∧ C.uniquenessProof

theorem closed_form_classification_closed_from_evidence
    {I : IntegerSequenceCore} {R : RecurrenceClosure I}
    (C : ClosedFormClassification I R) (E : ClosedFormClassificationEvidence C) :
    ClosedFormClassificationClosed C := by
  exact And.intro E.closedFormExistsClosed
    (And.intro E.closedFormTypeIdentified
      (And.intro E.parametersSolvedClosed E.uniquenessProofClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse