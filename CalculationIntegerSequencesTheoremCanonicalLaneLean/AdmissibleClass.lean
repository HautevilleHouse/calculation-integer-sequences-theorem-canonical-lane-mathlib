import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : SequenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SequenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse