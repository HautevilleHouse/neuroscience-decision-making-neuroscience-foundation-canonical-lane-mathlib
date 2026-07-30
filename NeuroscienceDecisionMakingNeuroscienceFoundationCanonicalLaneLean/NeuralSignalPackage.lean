import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure NeuralSignalPackage where
  membranePotential : Type u
  ionChannelConductance : Type v
  actionPotentialInitiation : Prop
  actionPotentialPropagation : Prop
  synapseDynamics : Prop

structure NeuralSignalEvidence (N : NeuralSignalPackage) where
  actionPotentialInitiationClosed : N.actionPotentialInitiation
  actionPotentialPropagationClosed : N.actionPotentialPropagation
  synapseDynamicsClosed : N.synapseDynamics

def NeuralSignalClosed (N : NeuralSignalPackage) : Prop :=
  N.actionPotentialInitiation ∧ N.actionPotentialPropagation ∧ N.synapseDynamics

theorem neural_signal_closed_from_evidence (N : NeuralSignalPackage) (E : NeuralSignalEvidence N) : NeuralSignalClosed N := by
  exact And.intro E.actionPotentialInitiationClosed (And.intro E.actionPotentialPropagationClosed E.synapseDynamicsClosed)

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse