import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure ConnectomicsPackage where
  connectomeGraph : Type
  nodeDynamics : Type
  graphTopology : Prop
  informationFlow : Prop
  decisionCircuitIdentified : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  graphTopologyClosed : C.graphTopology
  informationFlowClosed : C.informationFlow
  decisionCircuitIdentifiedClosed : C.decisionCircuitIdentified

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graphTopology ∧ C.informationFlow ∧ C.decisionCircuitIdentified

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.graphTopologyClosed (And.intro E.informationFlowClosed E.decisionCircuitIdentifiedClosed)

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
