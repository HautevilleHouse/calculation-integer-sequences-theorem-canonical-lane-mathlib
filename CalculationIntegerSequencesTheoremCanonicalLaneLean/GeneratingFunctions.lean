import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure GeneratingFunctionPackage where
  rationalGeneratingFunction : Prop
  algebraicGeneratingFunction : Prop
  closedFormExtracted : Prop
  identityProven : Prop

structure GeneratingFunctionEvidence (P : GeneratingFunctionPackage) where
  rationalGenerated : P.rationalGeneratingFunction
  algebraicTerm : P.algebraicGeneratingFunction
  closedFormDerived : P.closedFormExtracted
  identityConfirmed : P.identityProven

def GeneratingFunctionClosed (P : GeneratingFunctionPackage) : Prop :=
  P.rationalGeneratingFunction ∧ P.algebraicGeneratingFunction ∧
  P.closedFormExtracted ∧ P.identityProven

theorem generating_function_closed_from_evidence (P : GeneratingFunctionPackage)
    (E : GeneratingFunctionEvidence P) : GeneratingFunctionClosed P := by
  exact And.intro E.rationalGenerated (And.intro E.algebraicTerm (And.intro E.closedFormDerived E.identityConfirmed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse