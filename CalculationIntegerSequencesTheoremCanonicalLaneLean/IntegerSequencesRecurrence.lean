import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequencesObjects

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure RecurrenceRelation where
  order : Nat
  coefficients : List ℤ
  initialTerms : List ℤ
  recurrenceClosed : Prop

structure RecurrenceClosedPackage where
  recurrence : RecurrenceRelation
  closedFormExists : Prop
  growthRateBounded : Prop

def RecurrenceClosed (R : RecurrenceClosedPackage) : Prop :=
  R.closedFormExists ∧ R.growthRateBounded

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse
