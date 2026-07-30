import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsFreeWillLemmaCanonicalLaneLean.FreeWillAxiomClassification

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure AdmissibleFreeWillObject where
  agent : FreeWillAgentPackage
  axiomClosed : FreeWillAxiomClosed agent

structure AdmissibleClass where
  object : AdmissibleFreeWillObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeWillAxiomClosed A.object.agent ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse