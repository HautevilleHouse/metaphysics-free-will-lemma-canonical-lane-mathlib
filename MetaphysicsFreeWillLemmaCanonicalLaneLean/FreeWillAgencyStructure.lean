import HautevilleHouse.MetaphysicsFreeWillLemmaCanonicalLaneLean.CompatibilistCondition
import HautevilleHouse.MetaphysicsFreeWillLemmaCanonicalLaneLean.LibertarianCondition

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure AgentStructure where
  compatibilistCondition : CompatibilistCondition
  libertarianCondition : LibertarianCondition
  moralResponsibility : MoralResponsibilityClosure

def AgentStructure.closed (A : AgentStructure) : Prop :=
  A.compatibilistCondition.closed ∧ A.libertarianCondition.closed ∧ A.moralResponsibility.closed

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse
