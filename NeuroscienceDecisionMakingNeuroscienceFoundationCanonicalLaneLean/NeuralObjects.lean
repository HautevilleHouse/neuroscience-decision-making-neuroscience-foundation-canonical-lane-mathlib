import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure AdmittedNeuralObject where
  spikeTrain : Type
  decisionVariable : Type
  learningRule : Type
  decisionMade : Prop
  conclusion : decisionMade

structure NeuralDecisionState where
  object : AdmittedNeuralObject

def NeuralWitnessClosed (O : AdmittedNeuralObject) : Prop :=
  O.decisionMade

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
