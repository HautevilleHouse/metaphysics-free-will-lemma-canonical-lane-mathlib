import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure DeterministicNeighborhoodsPackage where
  causalClosure : Prop
  localDeterminism : Prop
  freedomCompat : Prop

def DeterministicNeighborhoodsClosed (D : DeterministicNeighborhoodsPackage) : Prop :=
  D.causalClosure ∧ D.localDeterminism ∧ D.freedomCompat

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse