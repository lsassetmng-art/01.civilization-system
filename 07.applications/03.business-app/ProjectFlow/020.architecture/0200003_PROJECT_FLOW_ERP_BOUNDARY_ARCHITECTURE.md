# ============================================================
# PROJECT FLOW ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

boundary_rule:
ProjectFlow must not own full ERP transmission logic.

path_inbound:
ERP
-> shared BusinessOS ERP integration capability
-> ProjectFlow intake/update view

path_outbound:
ProjectFlow publication request
-> shared BusinessOS ERP integration capability
-> ERP

shared_businessos_responsibility:
- company context attachment
- permission and publish guard
- payload mapping
- transmission execution
- result normalization
- audit logging
- retry control

projectflow_responsibility:
- request issuance
- target selection
- UI display
- sync state display
- error display
- retry action
