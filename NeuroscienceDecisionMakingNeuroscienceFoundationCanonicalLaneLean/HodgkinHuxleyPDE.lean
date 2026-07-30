import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneVoltage : Type
  ionChannelGates : Type
  capacitance : ℝ
  conductanceNa : ℝ
  conductanceK : ℝ
  conductanceL : ℝ
  reversalNa : ℝ
  reversalK : ℝ
  reversalL : ℝ
  gatingDynamics : Prop
  actionPotentialExists : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  gatingDynamicsClosed : H.gatingDynamics
  actionPotentialExistsClosed : H.actionPotentialExists

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.gatingDynamics ∧ H.actionPotentialExists

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.gatingDynamicsClosed E.actionPotentialExistsClosed

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
