# ============================================================
# STATIC ART OS PERSONA REFERENCE MODULE OWNERSHIP AND TOUCHPOINT MATRIX
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Clarify which implementation layer owns which concern and where
touchpoints exist.

ownership_matrix:
  db_reference_layer:
    owns:
      - local reference rows
      - local history rows
      - local projection rows
      - local_view_config
    does_not_own:
      - Persona canonical truth
      - Persona rights canonical truth
      - Persona mutable state

  event_reflection_layer:
    owns:
      - local reflection behavior from official result events
      - idempotent update logic
      - stale/replay safety
    does_not_own:
      - upstream authoritative decision
      - direct mutation of Persona canonical truth

  api_read_side:
    owns:
      - delivery of reference-safe response fields
      - local_view_config patch validation
      - internal reflection endpoint contract
    does_not_own:
      - Persona truth editing

  ui_surface_layer:
    owns:
      - rendering of signed-snapshot-based display
      - local presentation-only config interaction
      - stale/expired/restricted-safe display states
    does_not_own:
      - Persona canonical editing
      - rights approval decisions

  runtime_operations_layer:
    owns:
      - observability
      - drift detection
      - rollback/disablement decision support
      - evidence capture
    does_not_own:
      - corrective invention of Persona truth

touchpoints:
  db_to_event:
    - source_event_id
    - signed_snapshot_id
    - target_surface

  event_to_api:
    - reflected current reference
    - reflected projection
    - reflected rights digest/restriction state

  api_to_ui:
    - creator_persona_reference
    - signed snapshot reference metadata
    - public/exhibition projection
    - local_view_config

  ui_to_api:
    - presentation-only local_view_config patch only

  runtime_to_all:
    - logs
    - drift evidence
    - release/rollback judgement
    - execution evidence

ownership_rule:
- touchpoint does not imply ownership transfer
- every touchpoint must preserve signed snapshot consumption boundary
