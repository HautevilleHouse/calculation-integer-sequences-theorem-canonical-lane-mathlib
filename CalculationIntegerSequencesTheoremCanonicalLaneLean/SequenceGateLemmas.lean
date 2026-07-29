import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.SequenceBridgeLemmas

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse