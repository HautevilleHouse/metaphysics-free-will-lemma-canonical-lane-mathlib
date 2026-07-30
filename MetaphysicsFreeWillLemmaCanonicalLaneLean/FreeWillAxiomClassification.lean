import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

/-!
# Free Will Axiom Classification Package

This module defines the axiomatic structure for the Metaphysics Free Will Lemma.
It records the key distinctions: libertarian vs. compatibilist vs. hard determinist
frameworks, and the epistemic constraints on the admissible free-will object.
-/

structure FreeWillAgentPackage where
  agentType : Type u
  epistemicState : Type v
  deliberativeCapacity : Prop
  alternativePossibilities : Prop
  causalDetermination : Prop
  choiceOutcome : agentType → epistemicState → Prop

structure FreeWillAxiomEvidence (A : FreeWillAgentPackage) where
  deliberativeCapacityClosed : A.deliberativeCapacity
  alternativePossibilitiesClosed : A.alternativePossibilities
  causalDeterminationClosed : A.causalDetermination

def FreeWillAxiomClosed (A : FreeWillAgentPackage) : Prop :=
  A.deliberativeCapacity ∧ A.alternativePossibilities ∧ A.causalDetermination

theorem free_will_axiom_closed_from_evidence (A : FreeWillAgentPackage)
    (E : FreeWillAxiomEvidence A) : FreeWillAxiomClosed A := by
  exact And.intro E.deliberativeCapacityClosed
    (And.intro E.alternativePossibilitiesClosed E.causalDeterminationClosed)

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse