import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  ionChannelConductances : ℝ × ℝ × ℝ
  reversalPotentials : ℝ × ℝ × ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  differentialEquations : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  differentialEquationsClosed : H.differentialEquations
  actionPotentialGeneratedClosed : H.actionPotentialGenerated

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.differentialEquations ∧ H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.differentialEquationsClosed E.actionPotentialGeneratedClosed

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse