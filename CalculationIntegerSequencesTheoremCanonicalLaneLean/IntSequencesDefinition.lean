import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure IntegerSequencePackage where
  indexSet : Type u
  termFunction : indexSet -> ℕ
  explicitFormula : Prop
  recurrenceRelation : Prop
  generatingFunction : Prop
  closedForm : Prop
  explicitFormulaTerm : explicitFormula
  recurrenceRelationTerm : recurrenceRelation
  generatingFunctionTerm : generatingFunction
  closedFormTerm : closedForm

structure IntegerSequenceEvidence (S : IntegerSequencePackage) where
  explicitFormulaClosed : S.explicitFormula
  recurrenceRelationClosed : S.recurrenceRelation
  generatingFunctionClosed : S.generatingFunction
  closedFormClosed : S.closedForm

def IntegerSequenceClosed (S : IntegerSequencePackage) : Prop :=
  S.explicitFormula ∧ S.recurrenceRelation ∧ S.generatingFunction ∧ S.closedForm

theorem integer_sequence_closed_from_evidence (S : IntegerSequencePackage) (E : IntegerSequenceEvidence S) :
    IntegerSequenceClosed S := by
  exact And.intro E.explicitFormulaClosed (And.intro E.recurrenceRelationClosed (And.intro E.generatingFunctionClosed E.closedFormClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse