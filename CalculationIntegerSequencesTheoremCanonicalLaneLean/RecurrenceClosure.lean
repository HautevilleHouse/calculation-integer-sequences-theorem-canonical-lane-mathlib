import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequenceCore

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure RecurrenceClosure (I : IntegerSequenceCore) where
  recurrenceOrder : ℕ
  characteristicPolynomial : Prop
  explicitFormula : Prop
  closureUnderInitialConditions : Prop

structure RecurrenceClosureEvidence {I : IntegerSequenceCore} (R : RecurrenceClosure I) where
  recurrenceOrderDefined : R.recurrenceOrder > 0
  characteristicPolynomialClosed : R.characteristicPolynomial
  explicitFormulaClosed : R.explicitFormula
  closureUnderInitialConditionsClosed : R.closureUnderInitialConditions

def RecurrenceClosureClosed {I : IntegerSequenceCore} (R : RecurrenceClosure I) : Prop :=
  R.recurrenceOrder > 0 ∧ R.characteristicPolynomial ∧ R.explicitFormula ∧ R.closureUnderInitialConditions

theorem recurrence_closure_closed_from_evidence
    {I : IntegerSequenceCore} (R : RecurrenceClosure I) (E : RecurrenceClosureEvidence R) :
    RecurrenceClosureClosed R := by
  exact And.intro E.recurrenceOrderDefined
    (And.intro E.characteristicPolynomialClosed
      (And.intro E.explicitFormulaClosed E.closureUnderInitialConditionsClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse