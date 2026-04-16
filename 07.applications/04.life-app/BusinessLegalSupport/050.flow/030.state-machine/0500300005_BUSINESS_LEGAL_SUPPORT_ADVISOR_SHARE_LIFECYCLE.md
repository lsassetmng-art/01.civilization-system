# ============================================================
# BUSINESS LEGAL SUPPORT ADVISOR SHARE LIFECYCLE
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

share_lifecycle_fields:
  - shared_at
  - revoked_at
  - share_scope

logical_states:
  - active_share
  - revoked_share

state_conditions:
  active_share:
    - shared_at is not null
    - revoked_at is null

  revoked_share:
    - shared_at is not null
    - revoked_at is not null

allowed_transitions:
  active_share:
    can_move_to:
      - revoked_share

  revoked_share:
    can_move_to:
      - active_share_by_new_record_only

rules:
  - revocation does not mutate original issue data
  - revocation removes future visibility
  - re-share should create a new share record instead of clearing revoked_at
  - share scope is frozen per share record
  - advisor_viewer never gains write permission through lifecycle changes
