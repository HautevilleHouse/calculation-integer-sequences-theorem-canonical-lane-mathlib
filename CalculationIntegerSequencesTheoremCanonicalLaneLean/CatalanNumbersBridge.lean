import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure CatalanNumberPackage where
  n : ℕ
  catalanValue : ℕ
  combinatorialDefinition : Prop
  recurrenceRelation : Prop
  closedForm : Prop
  generatingFunction : Prop
  combinatorialDefinitionTerm : combinatorialDefinition
  recurrenceRelationTerm : recurrenceRelation
  closedFormTerm : closedForm
  generatingFunctionTerm : generatingFunction

structure CatalanNumberEvidence (C : CatalanNumberPackage) where
  combinatorialDefinitionClosed : C.combinatorialDefinition
  recurrenceRelationClosed : C.recurrenceRelation
  closedFormClosed : C.closedForm
  generatingFunctionClosed : C.generatingFunction

def CatalanNumberClosed (C : CatalanNumberPackage) : Prop :=
  C.combinatorialDefinition ∧ C.recurrenceRelation ∧ C.closedForm ∧ C.generatingFunction

theorem catalan_number_closed_from_evidence (C : CatalanNumberPackage) (E : CatalanNumberEvidence C) :
    CatalanNumberClosed C := by
  exact And.intro E.combinatorialDefinitionClosed (And.intro E.recurrenceRelationClosed (And.intro E.closedFormClosed E.generatingFunctionClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse