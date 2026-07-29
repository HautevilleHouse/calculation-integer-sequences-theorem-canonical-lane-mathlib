import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure ClosedFormDerivationPackage where
  explicitFormula : Prop
  combinatorialInterpretation : Prop
  asymptoticEstimate : Prop
  generatingFunctionLink : Prop

structure ClosedFormDerivationEvidence (C : ClosedFormDerivationPackage) where
  explicitFormulaClosed : C.explicitFormula
  combinatorialInterpretationClosed : C.combinatorialInterpretation
  asymptoticEstimateClosed : C.asymptoticEstimate
  generatingFunctionLinkClosed : C.generatingFunctionLink

def ClosedFormDerivationClosed (C : ClosedFormDerivationPackage) : Prop :=
  C.explicitFormula ∧ C.combinatorialInterpretation ∧
  C.asymptoticEstimate ∧ C.generatingFunctionLink

theorem closed_form_derivation_closed_from_evidence (C : ClosedFormDerivationPackage)
    (E : ClosedFormDerivationEvidence C) : ClosedFormDerivationClosed C := by
  exact And.intro E.explicitFormulaClosed (And.intro E.combinatorialInterpretationClosed (And.intro E.asymptoticEstimateClosed E.generatingFunctionLinkClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse