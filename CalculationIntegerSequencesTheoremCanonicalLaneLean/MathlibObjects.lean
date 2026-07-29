import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure CalculationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CalculationAdmittedObject where
  space : CalculationSpace
  integerSequence : ℕ → ℤ
  closedForm : ℕ → ℤ
  formulaProved : Prop
  conclusion : formulaProved

structure CalculationEndgameState where
  object : CalculationAdmittedObject

def CalculationWitnessClosed (O : CalculationAdmittedObject) : Prop :=
  O.formulaProved

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse