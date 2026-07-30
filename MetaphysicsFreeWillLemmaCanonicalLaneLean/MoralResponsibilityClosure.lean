namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure MoralResponsibilityClosure where
  basicDesert : Prop
  ultimateResponsibility : Prop
  closed : Prop
  closedTerm : closed

def MoralResponsibilityClosed (M : MoralResponsibilityClosure) : Prop :=
  M.basicDesert ∧ M.ultimateResponsibility

theorem moral_responsibility_closed_from_evidence (M : MoralResponsibilityClosure) : MoralResponsibilityClosed M := by
  exact And.intro M.basicDesert M.ultimateResponsibility

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse
