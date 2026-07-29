import CalculationIntegerSequencesTheoremCanonicalLaneLean.AdmissibleSequence
import CalculationIntegerSequencesTheoremCanonicalLaneLean.RecurrenceRelationPackage

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure GeneratingFunctionGeometrizationPackage {A : AdmissibleSequence}
    (R : RecurrenceRelationPackage A) where
  rationalFunction : ℚ[[X]]
  partialFractionDecomp : Prop
  closedFormDerived : Prop
  rationalFunctionValid : Prop

structure GeneratingFunctionGeometrizationEvidence {A : AdmissibleSequence}
    {R : RecurrenceRelationPackage A} (G : GeneratingFunctionGeometrizationPackage R) where
  rationalFunctionValidClosed : G.rationalFunctionValid
  partialFractionDecompClosed : G.partialFractionDecomp
  closedFormDerivedClosed : G.closedFormDerived

def GeneratingFunctionGeometrizationClosed {A : AdmissibleSequence}
    {R : RecurrenceRelationPackage A} (G : GeneratingFunctionGeometrizationPackage R) : Prop :=
  G.rationalFunctionValid ∧ G.partialFractionDecomp ∧ G.closedFormDerived

theorem generating_function_geometrization_closed_from_evidence {A : AdmissibleSequence}
    {R : RecurrenceRelationPackage A} (G : GeneratingFunctionGeometrizationPackage R)
    (E : GeneratingFunctionGeometrizationEvidence G) : GeneratingFunctionGeometrizationClosed G :=
  And.intro E.rationalFunctionValidClosed (And.intro E.partialFractionDecompClosed E.closedFormDerivedClosed)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse