import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure DecisionMakingCircuitMechanismsPackage where
  sensoryInput : Type u
  evidenceAccumulation : Type v
  decisionThreshold : Prop
  responseSelection : Prop
  rewardPrediction : Prop
  valueRepresentation : Prop
  cognitiveControl : Prop
  corticalSubcorticalLoops : Prop
  neuromodulation : Prop

structure DecisionMakingCircuitMechanismsEvidence (D : DecisionMakingCircuitMechanismsPackage) where
  decisionThresholdClosed : D.decisionThreshold
  responseSelectionClosed : D.responseSelection
  rewardPredictionClosed : D.rewardPrediction
  valueRepresentationClosed : D.valueRepresentation
  cognitiveControlClosed : D.cognitiveControl
  corticalSubcorticalLoopsClosed : D.corticalSubcorticalLoops
  neuromodulationClosed : D.neuromodulation

def DecisionMakingCircuitMechanismsClosed (D : DecisionMakingCircuitMechanismsPackage) : Prop :=
  D.decisionThreshold ∧ D.responseSelection ∧ D.rewardPrediction ∧
  D.valueRepresentation ∧ D.cognitiveControl ∧ D.corticalSubcorticalLoops ∧ D.neuromodulation

theorem decision_making_circuit_mechanisms_closed_from_evidence (D : DecisionMakingCircuitMechanismsPackage) (E : DecisionMakingCircuitMechanismsEvidence D) : DecisionMakingCircuitMechanismsClosed D := by
  exact And.intro E.decisionThresholdClosed (And.intro E.responseSelectionClosed (And.intro E.rewardPredictionClosed (And.intro E.valueRepresentationClosed (And.intro E.cognitiveControlClosed (And.intro E.corticalSubcorticalLoopsClosed E.neuromodulationClosed)))))

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
