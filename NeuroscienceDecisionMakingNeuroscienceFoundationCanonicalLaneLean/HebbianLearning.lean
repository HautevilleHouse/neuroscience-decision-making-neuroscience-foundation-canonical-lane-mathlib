import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HebbianLearningPackage where
  presynapticActivity : Type
  postsynapticActivity : Type
  synapticWeight : Type
  weightUpdate : Prop
  stabilityCondition : Prop
  learningConverges : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  weightUpdateClosed : H.weightUpdate
  stabilityConditionClosed : H.stabilityCondition
  learningConvergesClosed : H.learningConverges

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.weightUpdate ∧ H.stabilityCondition ∧ H.learningConverges

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.weightUpdateClosed (And.intro E.stabilityConditionClosed E.learningConvergesClosed)

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
