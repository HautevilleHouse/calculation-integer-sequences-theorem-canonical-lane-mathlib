import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequencesObjects

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SequenceClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.admittedSequence.conclusion

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse
