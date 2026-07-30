import MetaphysicsFreeWillLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure CompatibilistFrameworkPackage where
  agent : Type
  choiceSet : Type
  causalDeterminism : Prop
  alternativePossibilities : Prop
  moralResponsibility : Prop
  compatibilityProof : causalDeterminism → alternativePossibilities → moralResponsibility

structure CompatibilistFrameworkEvidence (C : CompatibilistFrameworkPackage) where
  causalDeterminismClosed : C.causalDeterminism
  alternativePossibilitiesClosed : C.alternativePossibilities
  moralResponsibilityClosed : C.moralResponsibility
  compatibilityClosed : C.compatibilityProof C.causalDeterminism C.alternativePossibilities

def CompatibilistFrameworkClosed (C : CompatibilistFrameworkPackage) : Prop :=
  C.causalDeterminism ∧ C.alternativePossibilities ∧ C.moralResponsibility ∧
  (C.compatibilityProof C.causalDeterminism C.alternativePossibilities)

theorem compatibilist_framework_closed_from_evidence
    (C : CompatibilistFrameworkPackage) (E : CompatibilistFrameworkEvidence C) :
    CompatibilistFrameworkClosed C := by
  exact And.intro E.causalDeterminismClosed
    (And.intro E.alternativePossibilitiesClosed
      (And.intro E.moralResponsibilityClosed E.compatibilityClosed))

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse