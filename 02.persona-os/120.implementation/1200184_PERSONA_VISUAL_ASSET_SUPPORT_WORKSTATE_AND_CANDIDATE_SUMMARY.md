# PERSONA VISUAL ASSET SUPPORT WORKSTATE AND CANDIDATE SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_063817

purpose:
Condenses work-state and candidate-state semantics inside the visual and asset support bundle.

functions:
- visual-job-create
- visual-compose
- visual-upload
- persona-auto-generate-part
- persona_build_manifest

primary state families:
- workstate_job
- composed_candidate
- uploaded_candidate
- generated_candidate
- release_ready_candidate
- authorized_delivery_candidate
- released_artifact

function-to-state mapping:
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

hard rules:
- workstate_job is not released_artifact
- composed_candidate is not released_artifact
- uploaded_candidate is not released_artifact
- generated_candidate is not released_artifact
- release_ready_candidate is not released_artifact until publish path completes
- state families must not collapse into a single generic asset-ready flag

status interpretation summary:
- create or compose success means candidate-stage output exists
- upload success means uploaded candidate exists
- generation success means generated candidate exists
- manifest success means support output exists
- none of these by themselves mean released public artifact exists
