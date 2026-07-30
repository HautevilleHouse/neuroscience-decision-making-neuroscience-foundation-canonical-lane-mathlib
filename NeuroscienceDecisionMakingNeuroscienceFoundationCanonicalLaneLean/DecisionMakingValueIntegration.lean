import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure DecisionMakingPackage where
  valueSignals : Type u
  choiceOptions : Type v
  integrationDynamics : Type w
  evidenceAccumulation : Prop
  decisionThreshold : Prop
  rewardPredictionError : Prop
  dopamineModulation : Prop
  evidenceAccumulationTerm : evidenceAccumulation
  decisionThresholdTerm : decisionThreshold
  rewardPredictionErrorTerm : rewardPredictionError
  dopamineModulationTerm : dopamineModulation

structure DecisionMakingEvidence (D : DecisionMakingPackage) where
  evidenceAccumulationClosed : D.evidenceAccumulation
  decisionThresholdClosed : D.decisionThreshold
  rewardPredictionErrorClosed : D.rewardPredictionError
  dopamineModulationClosed : D.dopamineModulation

def DecisionMakingClosed (D : DecisionMakingPackage) : Prop :=
  D.evidenceAccumulation ∧ D.decisionThreshold ∧ D.rewardPredictionError ∧ D.dopamineModulation

theorem decision_making_closed_from_evidence (D : DecisionMakingPackage) (E : DecisionMakingEvidence D) : DecisionMakingClosed D := by
  exact And.intro E.evidenceAccumulationClosed (And.intro E.decisionThresholdClosed (And.intro E.rewardPredictionErrorClosed E.dopamineModulationClosed))

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse