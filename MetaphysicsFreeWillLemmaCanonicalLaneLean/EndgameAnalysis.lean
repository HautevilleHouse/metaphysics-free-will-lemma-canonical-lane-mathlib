import MetaphysicsFreeWillLemmaCanonicalLaneLean.LibertarianCondition

namespace HautevilleHouse
namespace MetaphysicsFreeWillLemmaCanonicalLaneLean

structure EndgameAnalysisPackage where
  agent : Type
  choiceSet : Type
  freeWillProposition : Prop
  conclusion : freeWillProposition

structure EndgameAnalysisEvidence (E : EndgameAnalysisPackage) where
  freeWillPropositionClosed : E.freeWillProposition
  conclusionClosed : E.conclusion

def EndgameAnalysisClosed (E : EndgameAnalysisPackage) : Prop :=
  E.freeWillProposition ∧ E.conclusion

theorem endgame_analysis_closed_from_evidence
    (E : EndgameAnalysisPackage) (Ev : EndgameAnalysisEvidence E) :
    EndgameAnalysisClosed E := by
  exact And.intro Ev.freeWillPropositionClosed Ev.conclusionClosed

end MetaphysicsFreeWillLemmaCanonicalLaneLean
end HautevilleHouse