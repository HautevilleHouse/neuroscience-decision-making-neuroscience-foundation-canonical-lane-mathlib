import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  weightUpdateRule : Prop
  spikeTimingDependence : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  homeostaticScaling : Prop
  cooperativity : Prop
  inputSelectivity : Prop

structure HebbianSynapticPlasticityEvidence (P : HebbianSynapticPlasticityPackage) where
  weightUpdateRuleClosed : P.weightUpdateRule
  spikeTimingDependenceClosed : P.spikeTimingDependence
  longTermPotentiationClosed : P.longTermPotentiation
  longTermDepressionClosed : P.longTermDepression
  homeostaticScalingClosed : P.homeostaticScaling
  cooperativityClosed : P.cooperativity
  inputSelectivityClosed : P.inputSelectivity

def HebbianSynapticPlasticityClosed (P : HebbianSynapticPlasticityPackage) : Prop :=
  P.weightUpdateRule ∧ P.spikeTimingDependence ∧ P.longTermPotentiation ∧ P.longTermDepression ∧
  P.homeostaticScaling ∧ P.cooperativity ∧ P.inputSelectivity

theorem hebbian_synaptic_plasticity_closed_from_evidence (P : HebbianSynapticPlasticityPackage) (E : HebbianSynapticPlasticityEvidence P) : HebbianSynapticPlasticityClosed P := by
  exact And.intro E.weightUpdateRuleClosed (And.intro E.spikeTimingDependenceClosed (And.intro E.longTermPotentiationClosed (And.intro E.longTermDepressionClosed (And.intro E.homeostaticScalingClosed (And.intro E.cooperativityClosed E.inputSelectivityClosed)))))

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
