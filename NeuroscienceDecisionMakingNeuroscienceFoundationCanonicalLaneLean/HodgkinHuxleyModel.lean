import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  ionCurrents : ℝ × ℝ × ℝ
  capacitance : ℝ
  timeConstant : ℝ
  modelClosed : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membranePotentialClosed : H.modelClosed
  gatingVariablesClosed : H.modelClosed
  ionCurrentsClosed : H.modelClosed
  capacitanceClosed : H.capacitance = 1.0
  timeConstantClosed : H.timeConstant > 0

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.modelClosed ∧ H.capacitance = 1.0 ∧ H.timeConstant > 0

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membranePotentialClosed (And.intro E.capacitanceClosed E.timeConstantClosed)

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse