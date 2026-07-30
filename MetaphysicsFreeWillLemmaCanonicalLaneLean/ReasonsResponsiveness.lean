import HautevilleHouse.MetaphysicsFreeWillLemmaCanonicalLaneLean.FreeWillAdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure ReasonsResponsivenessPackage where
  agent : Type
  recognizesReasons : Prop
  reactsToReasons : Prop
  counterfactualSensitivity : Prop

structure ReasonsResponsivenessEvidence (R : ReasonsResponsivenessPackage) where
  recognizesReasonsClosed : R.recognizesReasons
  reactsToReasonsClosed : R.reactsToReasons
  counterfactualSensitivityClosed : R.counterfactualSensitivity

def ReasonsResponsivenessClosed (R : ReasonsResponsivenessPackage) : Prop :=
  R.recognizesReasons ∧ R.reactsToReasons ∧ R.counterfactualSensitivity

theorem reasons_responsiveness_closed_from_evidence
    (R : ReasonsResponsivenessPackage) (E : ReasonsResponsivenessEvidence R) :
    ReasonsResponsivenessClosed R := by
  exact And.intro E.recognizesReasonsClosed
    (And.intro E.reactsToReasonsClosed E.counterfactualSensitivityClosed)

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse