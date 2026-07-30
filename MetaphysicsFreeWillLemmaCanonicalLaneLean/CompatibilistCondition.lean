namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure CompatibilistCondition where
  determinismCompatible : Prop
  alternativePossibilities : Prop
  closed : Prop
  closedTerm : closed

def CompatibilistClosed (C : CompatibilistCondition) : Prop :=
  C.determinismCompatible ∧ C.alternativePossibilities

theorem compatibilist_closed_from_evidence (C : CompatibilistCondition) : CompatibilistClosed C := by
  exact And.intro C.determinismCompatible C.alternativePossibilities

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse
