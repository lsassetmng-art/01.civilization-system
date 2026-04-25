# PERSONA SNAPSHOT AND TRUST EXTERNAL SURFACE MATRIX

status: design-freeze-ready
system: PersonaOS
layer: integration
confirmed_at: 20260418_121843

purpose:
Fixes what external OSs may consume from the snapshot and trust family.

allowed_external_surface:
- signed snapshot artifact
- snapshot metadata needed for verification
- verification result surface
- revocation status surface
- revocation-list publication surface
- active verification key retrieval surface where policy allows

forbidden_external_surface:
- direct mutable truth read from personas
- direct mutable truth read from persona_state
- direct mutable truth read from growth_core_state
- direct mutable truth read from memory_state
- direct mutable truth update through snapshot or trust functions
- private signing material exposure

function_surface_matrix:
- snapshot-issue
  - external_call_mode: restricted internal or controlled release path
  - external_truth_access: forbidden
- snapshot-verify
  - external_call_mode: allowed verification surface
  - mutable_truth_access: forbidden
- snapshot-revoke
  - external_call_mode: restricted governance path
  - mutable_truth_access: forbidden
- revocation-list
  - external_call_mode: allowed publication surface
  - mutable_truth_access: forbidden
- keys-current / keys-by-id
  - external_call_mode: verification-support only
  - private_material_access: forbidden

