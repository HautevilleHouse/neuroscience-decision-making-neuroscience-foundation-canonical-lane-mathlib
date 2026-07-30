import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : ℝ → ℝ
  postsynapticActivity : ℝ → ℝ
  learningRate : ℝ
  weightDynamics : ℝ → ℝ
  hebbianRule : Prop
  weightConvergence : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianRuleClosed : H.hebbianRule
  weightConvergenceClosed : H.weightConvergence

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianRule ∧ H.weightConvergence

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.hebbianRuleClosed E.weightConvergenceClosed

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse