import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure SequenceAdmittedObject where
  sequence : ℕ → ℤ
  closedForm : ℕ → ℤ
  closedFormMatches : Prop
  conclusion : closedFormMatches

structure AdmissibleClass where
  object : SequenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SequenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SequenceWitnessClosed (O : SequenceAdmittedObject) : Prop :=
  O.closedFormMatches

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse