namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure LibertarianCondition where
  indeterminismRequired : Prop
  agentCausation : Prop
  closed : Prop
  closedTerm : closed

def LibertarianClosed (L : LibertarianCondition) : Prop :=
  L.indeterminismRequired ∧ L.agentCausation

theorem libertarian_closed_from_evidence (L : LibertarianCondition) : LibertarianClosed L := by
  exact And.intro L.indeterminismRequired L.agentCausation

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse
