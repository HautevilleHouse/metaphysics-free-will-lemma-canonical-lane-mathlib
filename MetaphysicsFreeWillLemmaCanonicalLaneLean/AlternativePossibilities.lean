import HautevilleHouse.MetaphysicsFreeWillLemmaCanonicalLaneLean.FreeWillAdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure AlternativePossibilitiesPackage where
  agent : Type
  availableChoices : Prop
  agentControlsChoice : Prop
  epistemicCondition : Prop

structure AlternativePossibilitiesEvidence (A : AlternativePossibilitiesPackage) where
  availableChoicesClosed : A.availableChoices
  agentControlsChoiceClosed : A.agentControlsChoice
  epistemicConditionClosed : A.epistemicCondition

def AlternativePossibilitiesClosed (A : AlternativePossibilitiesPackage) : Prop :=
  A.availableChoices ∧ A.agentControlsChoice ∧ A.epistemicCondition

theorem alternative_possibilities_closed_from_evidence
    (A : AlternativePossibilitiesPackage) (E : AlternativePossibilitiesEvidence A) :
    AlternativePossibilitiesClosed A := by
  exact And.intro E.availableChoicesClosed
    (And.intro E.agentControlsChoiceClosed E.epistemicConditionClosed)

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse