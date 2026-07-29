import canonicalLaneMathlib.AdmissibleClass
import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntSequencesDefinition
import CalculationIntegerSequencesTheoremCanonicalLaneLean.BinomialCoefficientClosure
import CalculationIntegerSequencesTheoremCanonicalLaneLean.CatalanNumbersBridge
import CalculationIntegerSequencesTheoremCanonicalLaneLean.FibonacciSequenceRecurrence
import CalculationIntegerSequencesTheoremCanonicalLaneLean.PartitionFunctionClosure

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IntegerSequenceClosed (A.object : IntegerSequencePackage)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedIntegerSequenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_integer_sequence_endgame (A : AdmissibleClass) :
    ConstrainedIntegerSequenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse