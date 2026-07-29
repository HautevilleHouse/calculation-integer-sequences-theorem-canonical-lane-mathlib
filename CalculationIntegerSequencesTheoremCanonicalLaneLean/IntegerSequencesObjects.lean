import CalculationIntegerSequencesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure IntegerSequence where
  terms : Nat → ℤ
  name : String
  description : String

structure AdmittedSequence where
  sequence : IntegerSequence
  propertyDefined : Prop
  propertyHolds : Prop
  conclusion : propertyHolds

structure AdmittedObject where
  sequence : IntegerSequence
  admittedSequence : AdmittedSequence

def SequenceClosed (O : AdmittedObject) : Prop :=
  O.admittedSequence.propertyHolds

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse
