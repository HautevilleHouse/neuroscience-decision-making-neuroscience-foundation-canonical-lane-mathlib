import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyChannelPackage where
  membranePotential : Type u
  sodiumChannel : Type v
  potassiumChannel : Type w
  leakChannel : Type x
  activationGate : Prop
  inactivationGate : Prop
  nernstPotential : Prop
  conductanceModel : Prop
  gatingKinetics : Prop

structure HodgkinHuxleyChannelEvidence (G : HodgkinHuxleyChannelPackage) where
  activationGateClosed : G.activationGate
  inactivationGateClosed : G.inactivationGate
  nernstPotentialClosed : G.nernstPotential
  conductanceModelClosed : G.conductanceModel
  gatingKineticsClosed : G.gatingKinetics

def HodgkinHuxleyChannelClosed (G : HodgkinHuxleyChannelPackage) : Prop :=
  G.activationGate ∧ G.inactivationGate ∧ G.nernstPotential ∧ G.conductanceModel ∧ G.gatingKinetics

theorem hodgkin_huxley_channel_closed_from_evidence (G : HodgkinHuxleyChannelPackage) (E : HodgkinHuxleyChannelEvidence G) : HodgkinHuxleyChannelClosed G := by
  exact And.intro E.activationGateClosed (And.intro E.inactivationGateClosed (And.intro E.nernstPotentialClosed (And.intro E.conductanceModelClosed E.gatingKineticsClosed)))

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
