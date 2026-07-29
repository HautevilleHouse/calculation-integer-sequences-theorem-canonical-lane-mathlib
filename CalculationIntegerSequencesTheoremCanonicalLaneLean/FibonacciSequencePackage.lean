import canonicalLaneMathlib.AdmissibleClass
import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequenceAdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure FibonacciSequencePackage where
  closedForm : ℕ → ℤ
  recurrenceSatisfied : Prop
  binetFormula : Prop
  goldenRatioUsed : Prop

structure FibonacciSequenceEvidence (P : FibonacciSequencePackage) where
  recurrenceSatisfiedClosed : P.recurrenceSatisfied
  binetFormulaClosed : P.binetFormula
  goldenRatioUsedClosed : P.goldenRatioUsed

def FibonacciSequenceClosed (P : FibonacciSequencePackage) : Prop :=
  P.recurrenceSatisfied ∧ P.binetFormula ∧ P.goldenRatioUsed

theorem fibonacci_sequence_closed_from_evidence (P : FibonacciSequencePackage) (E : FibonacciSequenceEvidence P) :
    FibonacciSequenceClosed P := by
  exact And.intro E.recurrenceSatisfiedClosed (And.intro E.binetFormulaClosed E.goldenRatioUsedClosed)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse