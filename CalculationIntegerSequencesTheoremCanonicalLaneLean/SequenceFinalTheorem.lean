import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.SequenceGateLemmas

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

def ConstrainedSequenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sequence_endgame (A : AdmissibleClass) :
    ConstrainedSequenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse