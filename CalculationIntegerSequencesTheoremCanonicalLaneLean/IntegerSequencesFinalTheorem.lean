import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequencesGateLemmas

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

def ConstrainedIntegerSequencesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_integer_sequences_endgame (A : AdmissibleClass) :
    ConstrainedIntegerSequencesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse
