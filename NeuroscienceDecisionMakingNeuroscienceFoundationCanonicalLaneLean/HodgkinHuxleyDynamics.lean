import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  sodiumChannelGating : Type v
  potassiumChannelGating : Type w
  leakageCurrent : Type x
  voltageClampData : Prop
  actionPotentialGeneration : Prop
  recoveryFromInactivation : Prop
  voltageClampDataTerm : voltageClampData
  actionPotentialGenerationTerm : actionPotentialGeneration
  recoveryFromInactivationTerm : recoveryFromInactivation

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  voltageClampDataClosed : H.voltageClampData
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  recoveryFromInactivationClosed : H.recoveryFromInactivation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.voltageClampData ∧ H.actionPotentialGeneration ∧ H.recoveryFromInactivation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.voltageClampDataClosed (And.intro E.actionPotentialGenerationClosed E.recoveryFromInactivationClosed)

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse