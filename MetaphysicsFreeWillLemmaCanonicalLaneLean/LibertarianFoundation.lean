import canonicalLaneMathlib.AdmissibleClass
import DeterministicNeighborhoods

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure LibertarianFoundationPackage where
  alternativePossibilities : Prop
  ultimateSource : Prop
  agentCausation : Prop
  def LibertarianFoundationClosed (L : LibertarianFoundationPackage) : Prop :=
    L.alternativePossibilities ∧ L.ultimateSource ∧ L.agentCausation

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse