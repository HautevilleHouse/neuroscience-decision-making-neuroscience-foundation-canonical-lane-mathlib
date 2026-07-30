import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Type u
  leakConductance : Type v
  sodiumConductance : Type w
  potassiumConductance : Type x
  gatingVariables : Prop
  voltageClampConsistency : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  gatingVariablesClosed : H.gatingVariables
  voltageClampConsistencyClosed : H.voltageClampConsistency

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.gatingVariables ∧ H.voltageClampConsistency

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.gatingVariablesClosed E.voltageClampConsistencyClosed

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse