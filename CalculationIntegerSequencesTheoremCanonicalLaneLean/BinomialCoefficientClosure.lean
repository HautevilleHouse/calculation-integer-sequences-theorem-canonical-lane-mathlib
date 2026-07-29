import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure BinomialCoefficientPackage where
  n : ℕ
  k : ℕ
  binomialValue : ℕ
  combinatorialDefinition : Prop
  recursiveRelation : Prop
  symmetricProperty : Prop
  summationIdentity : Prop
  combinatorialDefinitionTerm : combinatorialDefinition
  recursiveRelationTerm : recursiveRelation
  symmetricPropertyTerm : symmetricProperty
  summationIdentityTerm : summationIdentity

structure BinomialCoefficientEvidence (B : BinomialCoefficientPackage) where
  combinatorialDefinitionClosed : B.combinatorialDefinition
  recursiveRelationClosed : B.recursiveRelation
  symmetricPropertyClosed : B.symmetricProperty
  summationIdentityClosed : B.summationIdentity

def BinomialCoefficientClosed (B : BinomialCoefficientPackage) : Prop :=
  B.combinatorialDefinition ∧ B.recursiveRelation ∧ B.symmetricProperty ∧ B.summationIdentity

theorem binomial_coefficient_closed_from_evidence (B : BinomialCoefficientPackage) (E : BinomialCoefficientEvidence B) :
    BinomialCoefficientClosed B := by
  exact And.intro E.combinatorialDefinitionClosed (And.intro E.recursiveRelationClosed (And.intro E.symmetricPropertyClosed E.summationIdentityClosed))

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse