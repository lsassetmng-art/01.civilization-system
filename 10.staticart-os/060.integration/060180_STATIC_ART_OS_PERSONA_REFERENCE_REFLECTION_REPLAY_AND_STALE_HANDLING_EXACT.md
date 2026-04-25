# ============================================================
# STATIC ART OS PERSONA REFERENCE REFLECTION REPLAY AND STALE HANDLING EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the exact rules for reflection, replay, stale-event handling,
and safe local update behavior for Persona reference results.

core_boundary:
- StaticArtOS reflects authoritative results only.
- StaticArtOS never invents Persona canonical truth.
- Replay must be safe and idempotent.
- Newer authoritative facts must dominate older ones.

# ------------------------------------------------------------
# 1. REFLECTION PRINCIPLES
# ------------------------------------------------------------

reflection_principles:
- only official result events may update local reference/projection tables
- every reflection write must be traceable by source_event_id
- reflection must be idempotent
- stale or older result must not overwrite newer applicable state
- projection may be refreshed, but projection is not canonical truth

# ------------------------------------------------------------
# 2. REPLAY RULES
# ------------------------------------------------------------

replay_rules:
  same_source_event_id_same_payload:
    result:
      - no duplicate history row
      - no harmful overwrite
      - may return applied_or_ignored_idempotent

  same_source_event_id_newer_equivalent_projection_timestamp:
    result:
      - projection row may be updated
      - only if projection_generated_at is newer_or_equal

  same_source_event_id_older_timestamp:
    result:
      - ignore as stale
      - keep newer local reflected state

  different_source_event_id_same_asset_same_surface:
    result:
      - compare authoritative timing and result_code
      - newer applicable result replaces current surface row
      - previous fact remains visible in history

# ------------------------------------------------------------
# 3. STALE HANDLING RULES
# ------------------------------------------------------------

stale_handling_rules:
  stale_by_applied_at:
    - older applied_at must not replace newer current row

  stale_by_projection_generated_at:
    - older projection_generated_at must not replace newer projection row

  stale_by_expiry:
    - expired current reference may remain historically visible
    - expired current reference must not be treated as fresh current truth

  stale_by_result_code:
    precedence_hint:
      - applied dominates rejected for current active surface when authoritative timing is newer
      - superseded may replace applied as current state if newer
      - expired may replace applied as current freshness state if newer

# ------------------------------------------------------------
# 4. RESULT CODE INTERPRETATION
# ------------------------------------------------------------

result_code_interpretation:
  applied:
    local_meaning:
      - current authoritative usable reference

  rejected:
    local_meaning:
      - request not approved
      - keep prior current row unless authoritative replacement rule says otherwise

  expired:
    local_meaning:
      - reference exists historically but current usable state is expired

  superseded:
    local_meaning:
      - previous reference replaced by newer authoritative reference

  refreshed:
    local_meaning:
      - projection content refreshed only
      - does not imply persona canonical state mutation

# ------------------------------------------------------------
# 5. LOCAL TABLE UPDATE RULES
# ------------------------------------------------------------

local_table_update_rules:
  current_reference_tables:
    - one current row per asset per surface
    - authoritative newer result replaces prior current row
    - duplicate source_event_id must not create duplicate current row

  history_table:
    - keep audit/replay history
    - same source_event_id + asset_id + target_surface must not duplicate

  projection_table:
    - update only from authoritative projection result
    - projection_generated_at drives freshness comparison
    - projection remains rebuildable cache

  local_view_config_table:
    - never updated by upstream Persona result event
    - only updated by local presentation-only action

# ------------------------------------------------------------
# 6. FAILURE / PARTIAL REFLECTION RULES
# ------------------------------------------------------------

failure_rules:
  projection_missing_after_snapshot_apply:
    - keep signed snapshot reference
    - mark projection unavailable
    - do not fabricate local truth

  rights_verification_missing:
    - show restricted_or_unavailable state if required
    - do not assume allowed

  duplicate_event_delivery:
    - ignore idempotently

  partial_write_failure:
    - retry safely by source_event_id
    - do not create inconsistent duplicate rows

# ------------------------------------------------------------
# 7. FINAL REFLECTION JUDGEMENT
# ------------------------------------------------------------

final_reflection_judgement:
- reflection is authoritative-result driven only
- replay is safe and idempotent
- stale data never overrides fresher authoritative state
- local cache/projection never becomes Persona truth
