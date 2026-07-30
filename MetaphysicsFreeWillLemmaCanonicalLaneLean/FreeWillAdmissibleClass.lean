import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure FreeWillObject where
  agent : Type
  hasAlternatives : Prop
  reasonsResponsive : Prop
  conclusion : hasAlternatives ∧ reasonsResponsive

structure FreeWillAdmissibleClass where
  object : FreeWillObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def freeWillAdmittedClosure (A : FreeWillAdmissibleClass) : Prop :=
  (A.object.hasAlternatives ∧ A.object.reasonsResponsive) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse