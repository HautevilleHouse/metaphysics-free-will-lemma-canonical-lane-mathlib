import canonicalLaneMathlib.AdmissibleClass
import MetaphysicsFreeWillLemmaCanonicalLaneLean.PrimitiveFreeWillObject

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure AgentCausationPackage where
  causalPowerRealized : Prop
  indeterministicControl : Prop
  causalPowerRealizedTerm : causalPowerRealized
  indeterministicControlTerm : indeterministicControl

structure AgentCausationEvidence (P : AgentCausationPackage) where
  causalPowerRealizedClosed : P.causalPowerRealized
  indeterministicControlClosed : P.indeterministicControl

def AgentCausationClosed (P : AgentCausationPackage) : Prop :=
  P.causalPowerRealized ∧ P.indeterministicControl

theorem agent_causation_closed_from_evidence (P : AgentCausationPackage)
    (E : AgentCausationEvidence P) : AgentCausationClosed P := by
  exact And.intro E.causalPowerRealizedClosed E.indeterministicControlClosed

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse