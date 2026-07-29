import canonicalLaneMathlib.AdmissibleClass
import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequenceAdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure CatalanSequencePackage where
  closedForm : ℕ → ℤ
  recurrenceSatisfied : Prop
  combinatorialInterpretation : Prop
  generatingFunctionClosed : Prop

structure CatalanSequenceEvidence (P : CatalanSequencePackage) where
  recurrenceSatisfiedClosed : P.recurrenceSatisfied
  combinatorialInterpretationClosed : P.combinatorialInterpretation
  generatingFunctionClosedClosed : P.generatingFunctionClosed

def CatalanSequenceClosed (P : CatalanSequencePackage) : Prop :=
  P.recurrenceSatisfied ∧ P.combinatorialInterpretation ∧ P.generatingFunctionClosed

theorem catalan_sequence_closed_from_evidence (P : CatalanSequencePackage) (E : CatalanSequenceEvidence P) :
    CatalanSequenceClosed P := by
  exact And.intro E.recurrenceSatisfiedClosed (And.intro E.combinatorialInterpretationClosed E.generatingFunctionClosedClosed)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse