import canonicalLaneMathlib.AdmissibleClass
import CalculationIntegerSequencesTheoremCanonicalLaneLean.IntegerSequenceAdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure BinomialCoefficientPackage where
  definition : ℕ → ℕ → ℤ
  pascalIdentity : Prop
  symmetryProperty : Prop
  combinatorialInterpretation : Prop

structure BinomialCoefficientEvidence (P : BinomialCoefficientPackage) where
  pascalIdentityClosed : P.pascalIdentity
  symmetryPropertyClosed : P.symmetryProperty
  combinatorialInterpretationClosed : P.combinatorialInterpretation

def BinomialCoefficientClosed (P : BinomialCoefficientPackage) : Prop :=
  P.pascalIdentity ∧ P.symmetryProperty ∧ P.combinatorialInterpretation

theorem binomial_coefficient_closed_from_evidence (P : BinomialCoefficientPackage) (E : BinomialCoefficientEvidence P) :
    BinomialCoefficientClosed P := by
  exact And.intro E.pascalIdentityClosed (And.intro E.symmetryPropertyClosed E.combinatorialInterpretationClosed)

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse