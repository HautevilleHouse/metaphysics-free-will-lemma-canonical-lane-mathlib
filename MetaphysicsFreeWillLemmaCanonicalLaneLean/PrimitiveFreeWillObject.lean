import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure PrimitiveFreeWillObject where
  agent : Type
  deliberationSpace : Type
  actionSpace : Type
  willActuation : Type
  alternativePossibilities : Prop
  agentCausalPower : Prop
  alternativePossibilitiesTerm : alternativePossibilities
  agentCausalPowerTerm : agentCausalPower

structure PrimitiveConsciousnessField where
  intentionalState : Type
  qualiaBundle : Type
  reflectiveAwareness : Prop
  phenomenalIntegration : Prop
  reflectiveAwarenessTerm : reflectiveAwareness
  phenomenalIntegrationTerm : phenomenalIntegration

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse