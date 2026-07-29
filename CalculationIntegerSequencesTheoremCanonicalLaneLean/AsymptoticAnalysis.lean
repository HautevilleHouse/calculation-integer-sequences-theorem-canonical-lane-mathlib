import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequenceCore

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure AsymptoticAnalysis (I : IntegerSequenceCore) where
  growthOrder : Prop
  leadingTerm : Prop
  lowerOrderTerms : Prop
  uniformBounds : Prop

structure AsymptoticAnalysisEvidence {I : IntegerSequenceCore} (A : AsymptoticAnalysis I) where
  growthOrderClosed : A.growthOrder
  leadingTermClosed : A.leadingTerm
  lowerOrderTermsClosed : A.lowerOrderTerms
  uniformBoundsClosed : A.uniformBounds

def AsymptoticAnalysisClosed {I : IntegerSequenceCore} (A : AsymptoticAnalysis I) : Prop :=
  A.growthOrder ∧ A.leadingTerm ∧ A.lowerOrderTerms ∧ A.uniformBounds

theorem asymptotic_analysis_closed_from_evidence
    {I : IntegerSequenceCore} (A : AsymptoticAnalysis I) (E : AsymptoticAnalysisEvidence A) :
    AsymptoticAnalysisClosed A := by
  exact And.intro E.growthOrderClosed
    (And.intro E.leadingTermClosed
      (And.intro E.lowerOrderTermsClosed E.uniformBoundsClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse