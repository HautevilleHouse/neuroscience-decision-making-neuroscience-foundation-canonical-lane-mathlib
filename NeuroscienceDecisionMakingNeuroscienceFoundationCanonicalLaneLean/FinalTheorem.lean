import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean.HodgkinHuxleyChannelDynamics
import HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean.HebbianSynapticPlasticity
import HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean.NeuralFieldTheory
import HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean.ConnectomicsNetworkArchitecture
import HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean.DecisionMakingCircuitMechanisms

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HodgkinHuxleyChannelClosed (by
    sorry) ∧ HebbianSynapticPlasticityClosed (by sorry) ∧
  NeuralFieldTheoryClosed (by sorry) ∧ ConnectomicsNetworkArchitectureClosed (by sorry) ∧
  DecisionMakingCircuitMechanismsClosed (by sorry)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedNeuroscienceDecisionMakingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_decision_making_endgame (A : AdmissibleClass) : ConstrainedNeuroscienceDecisionMakingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
