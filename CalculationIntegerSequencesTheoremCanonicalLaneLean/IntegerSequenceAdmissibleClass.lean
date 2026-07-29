import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure SequenceSpace where
  carrier : Type
  sequenceType : carrier → ℕ → ℤ

structure SequenceAdmittedObject where
  space : SequenceSpace
  closedFormExists : Prop
  recurrenceRelation : Prop
  generatingFunction : Prop
  conclusion : closedFormExists

structure SequenceEndgameState where
  object : SequenceAdmittedObject

def SequenceWitnessClosed (O : SequenceAdmittedObject) : Prop :=
  O.closedFormExists

structure AdmissibleClass where
  object : SequenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SequenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse