import canonicalLaneMathlib.AdmissibleClass
import LibertarianFoundation

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure EndpointClassificationPackage where
  freeWillRealized : Prop
  compatibilistResolved : Prop
  libertarianConfirmed : Prop
  def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
    E.freeWillRealized ∧ E.compatibilistResolved ∧ E.libertarianConfirmed

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse