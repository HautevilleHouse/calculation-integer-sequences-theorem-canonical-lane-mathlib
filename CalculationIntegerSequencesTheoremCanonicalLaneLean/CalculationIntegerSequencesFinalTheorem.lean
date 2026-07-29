import canonicalLaneMathlib.AdmissibleClass
import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequenceAdmissibleClass
import CalculationIntegerSequencesTheoremCanonicalLaneLean.FibonacciSequencePackage
import CalculationIntegerSequencesTheoremCanonicalLaneLean.CatalanSequencePackage
import CalculationIntegerSequencesTheoremCanonicalLaneLean.BinomialCoefficientPackage

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SequenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedSequenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sequence_endgame (A : AdmissibleClass) :
    ConstrainedSequenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse