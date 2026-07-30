import HautevilleHouse.MetaphysicsFreeWillLemmaCanonicalLaneLean.FreeWillAgencyStructure

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure FreeWillAdmittedObject where
  agent : AgentStructure
  hasFreeWill : Prop
  conclusion : hasFreeWill

def FreeWillWitnessClosed (O : FreeWillAdmittedObject) : Prop :=
  O.hasFreeWill

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse
