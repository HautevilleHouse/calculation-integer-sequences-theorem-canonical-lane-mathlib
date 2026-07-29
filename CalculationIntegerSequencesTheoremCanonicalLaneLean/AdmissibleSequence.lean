import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesTheoremCanonicalLaneLean

structure AdmissibleSequence where
  seq : Nat → ℕ
  closedFormCond : Prop
  remainderCond : Prop
  gateWitness : closedFormCond ∨ remainderCond

end CalculationIntegerSequencesTheoremCanonicalLaneLean
end HautevilleHouse