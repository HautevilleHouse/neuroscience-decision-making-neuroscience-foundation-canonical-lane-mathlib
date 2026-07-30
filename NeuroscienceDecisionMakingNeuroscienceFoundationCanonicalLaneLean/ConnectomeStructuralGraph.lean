import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean

structure ConnectomePackage where
  brainRegions : Type u
  structuralConnections : Type v
  adjacencyMatrix : Type w
  graphProperties : Prop
  smallWorldness : Prop
  modularOrganization : Prop
  hubIdentification : Prop
  graphPropertiesTerm : graphProperties
  smallWorldnessTerm : smallWorldness
  modularOrganizationTerm : modularOrganization
  hubIdentificationTerm : hubIdentification

structure ConnectomeEvidence (C : ConnectomePackage) where
  graphPropertiesClosed : C.graphProperties
  smallWorldnessClosed : C.smallWorldness
  modularOrganizationClosed : C.modularOrganization
  hubIdentificationClosed : C.hubIdentification

def ConnectomeClosed (C : ConnectomePackage) : Prop :=
  C.graphProperties ∧ C.smallWorldness ∧ C.modularOrganization ∧ C.hubIdentification

theorem connectome_closed_from_evidence (C : ConnectomePackage) (E : ConnectomeEvidence C) : ConnectomeClosed C := by
  exact And.intro E.graphPropertiesClosed (And.intro E.smallWorldnessClosed (And.intro E.modularOrganizationClosed E.hubIdentificationClosed))

end NeuroscienceDecisionMakingNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse