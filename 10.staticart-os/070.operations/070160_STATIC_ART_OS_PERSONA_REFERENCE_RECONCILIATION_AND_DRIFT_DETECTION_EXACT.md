# ============================================================
# STATIC ART OS PERSONA REFERENCE RECONCILIATION AND DRIFT DETECTION EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define exact reconciliation and drift-detection behavior for the
Persona reference layer inside StaticArtOS.

core_boundary:
- StaticArtOS is reflection side only.
- Reconciliation may detect drift, but must not invent Persona truth.
- Reconciliation may request refresh/replay, but must not directly mutate Persona canonical truth.

# ------------------------------------------------------------
# 1. DRIFT TYPES
# ------------------------------------------------------------

drift_types:
  reference_missing_projection:
    meaning:
      - current signed snapshot reference exists
      - display projection row missing or unusable

  projection_reference_mismatch:
    meaning:
      - projection signed_snapshot_id does not match current surface reference

  expired_but_still_rendered_as_fresh:
    meaning:
      - UI or read model treats expired reference as active

  history_gap:
    meaning:
      - current row exists but authoritative history row for the same source_event_id is absent

  rights_state_gap:
    meaning:
      - display shown as allowed while current verification is missing/expired/restricted

  local_config_boundary_violation:
    meaning:
      - local_view_config attempts to behave like Persona truth store

# ------------------------------------------------------------
# 2. RECONCILIATION ENTRYPOINTS
# ------------------------------------------------------------

reconciliation_entrypoints:
- scheduled read-only reconciliation job
- operator-triggered reconciliation review
- post-incident reconciliation
- rollout/cutover reconciliation
- replay verification after duplicate/stale event handling changes

# ------------------------------------------------------------
# 3. RECONCILIATION RULES
# ------------------------------------------------------------

reconciliation_rules:
  current_surface_reference:
    verify:
      - one current row per asset per surface
      - reference row freshness consistent with expires_at and result_code

  projection_alignment:
    verify:
      - projection target_surface matches current reference target surface
      - projection signed_snapshot_id matches current active reference signed_snapshot_id

  history_alignment:
    verify:
      - every current source_event_id has traceable history row where design requires it
      - duplicate source_event_id has not created duplicate history rows

  rights_alignment:
    verify:
      - restricted/expired/missing rights do not render as allowed

  local_view_alignment:
    verify:
      - local_view_config remains presentation-only
      - no forbidden truth-like fields are being relied on

# ------------------------------------------------------------
# 4. RECONCILIATION ACTIONS
# ------------------------------------------------------------

allowed_reconciliation_actions:
- mark row/state as drifted
- request authoritative projection refresh
- request authoritative replay/re-delivery review
- suppress fresh rendering and show unavailable/stale state
- record drift evidence

forbidden_reconciliation_actions:
- direct mutation of upstream Persona truth
- local fabrication of missing Persona truth
- silent rewrite of expired/restricted state into allowed/fresh state

# ------------------------------------------------------------
# 5. DRIFT SEVERITY
# ------------------------------------------------------------

drift_severity:
  sev_1_critical_boundary:
    examples:
      - local truth fabrication
      - direct mutation path detected
      - rights restriction bypassed

  sev_2_high_display_integrity:
    examples:
      - mismatched projection/reference
      - expired rendered as fresh
      - incorrect current row selection

  sev_3_operational_gap:
    examples:
      - missing history row
      - delayed projection refresh
      - stale indicator missing

# ------------------------------------------------------------
# 6. RECONCILIATION JUDGEMENT
# ------------------------------------------------------------

reconciliation_judgement:
- reconciliation exists to detect and request correction, not to claim Persona ownership
- drift handling must preserve signed-snapshot consumption boundary
