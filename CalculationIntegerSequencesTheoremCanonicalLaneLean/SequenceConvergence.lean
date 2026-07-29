import CalculationIntegerSequencesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure ConvergencePackage (O : SeqAdmittedObject) where
  cauchyCondition : Prop
  monotoneBounded : Prop
  limitUniqueness : Prop
  convergenceEvidence : O.limitExists

structure ConvergenceEvidence (O : SeqAdmittedObject) (C : ConvergencePackage O) where
  cauchyConditionClosed : C.cauchyCondition
  monotoneBoundedClosed : C.monotoneBounded
  limitUniquenessClosed : C.limitUniqueness

def ConvergenceClosed (O : SeqAdmittedObject) (C : ConvergencePackage O) : Prop :=
  C.cauchyCondition ∧ C.monotoneBounded ∧ C.limitUniqueness ∧ O.limitExists

theorem convergence_closed_from_evidence (O : SeqAdmittedObject) (C : ConvergencePackage O) (E : ConvergenceEvidence O C) : ConvergenceClosed O C := by
  exact And.intro E.cauchyConditionClosed (And.intro E.monotoneBoundedClosed (And.intro E.limitUniquenessClosed C.convergenceEvidence))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse