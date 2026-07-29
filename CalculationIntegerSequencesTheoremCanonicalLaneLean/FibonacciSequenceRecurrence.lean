import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure FibonacciPackage where
  fibZero : ℕ
  fibOne : ℕ
  recurrenceRelation : Prop
  closedFormBinet : Prop
  generatingFunction : Prop
  combinatorialInterpretation : Prop
  recurrenceRelationTerm : recurrenceRelation
  closedFormBinetTerm : closedFormBinet
  generatingFunctionTerm : generatingFunction
  combinatorialInterpretationTerm : combinatorialInterpretation

structure FibonacciEvidence (F : FibonacciPackage) where
  recurrenceRelationClosed : F.recurrenceRelation
  closedFormBinetClosed : F.closedFormBinet
  generatingFunctionClosed : F.generatingFunction
  combinatorialInterpretationClosed : F.combinatorialInterpretation

def FibonacciClosed (F : FibonacciPackage) : Prop :=
  F.recurrenceRelation ∧ F.closedFormBinet ∧ F.generatingFunction ∧ F.combinatorialInterpretation

theorem fibonacci_closed_from_evidence (F : FibonacciPackage) (E : FibonacciEvidence F) :
    FibonacciClosed F := by
  exact And.intro E.recurrenceRelationClosed (And.intro E.closedFormBinetClosed (And.intro E.generatingFunctionClosed E.combinatorialInterpretationClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse