# PERSONA VISUAL ASSET TIER C WORKSTATE CANDIDATE RELEASED STATE MATRIX

status: tier-c-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182828

purpose:
Fixes exact state semantics across visual and asset family members.

state_families:
- workstate_job
- composed_candidate
- uploaded_candidate
- generated_candidate
- authorized_delivery_candidate
- release_ready_candidate
- released_artifact

function_to_state_mapping:
- visual-job-create
  - primary_output_state: workstate_job
- visual-compose
  - primary_output_state: composed_candidate
- visual-upload
  - primary_output_state: uploaded_candidate
- persona-auto-generate-part
  - primary_output_state: generated_candidate
- persona_build_manifest
  - primary_output_state: composed_candidate or release_ready_candidate depending on policy
- persona_background_get_signed_urls
  - primary_output_state: authorized_delivery_candidate support only

hard_rules:
- workstate_job is not released_artifact
- composed_candidate is not released_artifact
- uploaded_candidate is not released_artifact
- generated_candidate is not released_artifact
- authorized_delivery_candidate is not equal to public released artifact
- released_artifact requires explicit release lineage and policy completion

state_transition_examples:
- workstate_job -> composed_candidate
- composed_candidate -> uploaded_candidate
- generated_candidate -> release_ready_candidate
- release_ready_candidate -> released_artifact through publish path only

