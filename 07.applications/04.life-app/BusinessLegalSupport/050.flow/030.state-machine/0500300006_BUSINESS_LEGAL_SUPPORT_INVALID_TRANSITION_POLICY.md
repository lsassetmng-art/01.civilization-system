# ============================================================
# BUSINESS LEGAL SUPPORT INVALID TRANSITION POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

invalid_transition_examples:
  - draft -> completed without activation
  - archived -> completed directly
  - canceled -> signed directly
  - deadline pending -> pending no-op forced update
  - revoked_share -> active_share by mutating same record

handling_policy:
  - invalid transition returns conflict or validation_failed
  - no silent remapping of states
  - state transition must be explicit in update path
  - forbidden transitions must not be auto-corrected by backend

design_note:
  - state machine strictness reduces ambiguity in UI and API behavior
  - actual error code mapping is defined in API error policy documents
