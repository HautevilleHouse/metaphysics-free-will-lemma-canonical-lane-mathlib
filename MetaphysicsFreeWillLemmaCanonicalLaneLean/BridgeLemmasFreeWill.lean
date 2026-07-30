import canonicalLaneMathlib.AdmissibleClass
import MetaphysicsFreeWillLemmaCanonicalLaneLean.FreeWillAdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FreeWillWitnessClosed (A.object : FreeWillAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse