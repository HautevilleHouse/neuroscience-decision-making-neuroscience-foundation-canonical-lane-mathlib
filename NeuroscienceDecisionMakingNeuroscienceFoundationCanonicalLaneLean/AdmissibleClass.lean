import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedNeuralObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
