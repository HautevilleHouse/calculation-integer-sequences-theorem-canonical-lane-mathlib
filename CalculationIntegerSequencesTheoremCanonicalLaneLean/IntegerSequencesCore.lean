import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure IntegerSequence (A : Type) where
  term : Nat -> A
  sequenceProp : Prop

structure SequenceAdmittedObject where
  sequence : IntegerSequence Nat
  integerSequenceProp : Prop
  generatingFunction : Prop
  recurrenceRelation : Prop
  closedForm : Prop
  conclusion : closedForm

structure CalculationIntegerSequencesState where
  object : SequenceAdmittedObject

def SequenceWitnessClosed (O : SequenceAdmittedObject) : Prop :=
  O.closedForm

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse