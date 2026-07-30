import HautevilleHouse.MetaphysicsFreeWillLemmaCanonicalLaneLean.AlternativePossibilities
import HautevilleHouse.MetaphysicsFreeWillLemmaCanonicalLaneLean.ReasonsResponsiveness

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure PrincipleOfAlternativePossibilitiesPackage where
  papStatement : Prop
  agent : Type
  alternativePossibilities : AlternativePossibilitiesPackage
  reasonsResponsiveness : ReasonsResponsivenessPackage

structure PrincipleOfAlternativePossibilitiesEvidence
    (P : PrincipleOfAlternativePossibilitiesPackage) where
  papStatementClosed : P.papStatement
  alternativePossibilitiesClosed : AlternativePossibilitiesClosed P.alternativePossibilities
  reasonsResponsivenessClosed : ReasonsResponsivenessClosed P.reasonsResponsiveness

def PrincipleOfAlternativePossibilitiesClosed
    (P : PrincipleOfAlternativePossibilitiesPackage) : Prop :=
  P.papStatement ∧
  AlternativePossibilitiesClosed P.alternativePossibilities ∧
  ReasonsResponsivenessClosed P.reasonsResponsiveness

theorem principle_of_alternative_possibilities_closed_from_evidence
    (P : PrincipleOfAlternativePossibilitiesPackage)
    (E : PrincipleOfAlternativePossibilitiesEvidence P) :
    PrincipleOfAlternativePossibilitiesClosed P := by
  exact And.intro E.papStatementClosed
    (And.intro E.alternativePossibilitiesClosed E.reasonsResponsivenessClosed)

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse