import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure RecurrenceDepthPackage (A : CalculationAdmissibleClass) where
  minimalOrder : ℕ
  characteristicPolynomial : ℤ[X]
  closedFormViaRoots : Prop
  orderBounded : minimalOrder ≤ A.object.recurrenceOrder

structure RecurrenceDepthEvidence (A : CalculationAdmissibleClass) (P : RecurrenceDepthPackage A) where
  minimalOrderClosed : P.minimalOrder = A.object.recurrenceOrder
  closedFormViaRootsClosed : P.closedFormViaRoots
  orderBoundedClosed : P.orderBounded

def RecurrenceDepthClosed (A : CalculationAdmissibleClass) (P : RecurrenceDepthPackage A) : Prop :=
  P.minimalOrder = A.object.recurrenceOrder ∧ P.closedFormViaRoots ∧ P.orderBounded

theorem recurrence_depth_closed_from_evidence (A : CalculationAdmissibleClass) (P : RecurrenceDepthPackage A)
    (E : RecurrenceDepthEvidence A P) : RecurrenceDepthClosed A P := by
  exact And.intro E.minimalOrderClosed (And.intro E.closedFormViaRootsClosed E.orderBoundedClosed)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse
