# ============================================================
# STATIC ART OS PERSONA REFERENCE EXPIRY RETENTION AND REFRESH EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define exact rules for expiry, retention, refresh, and historical
keeping for Persona reference data inside StaticArtOS.

core_rule:
- keep enough reference/history for audit and replay
- expire active display safely
- do not treat expired data as fresh truth
- projection refresh is display maintenance, not Persona ownership

# ------------------------------------------------------------
# 1. EXPIRY RULES
# ------------------------------------------------------------

expiry_rules:
  signed_snapshot_reference:
    - current usability ends at expires_at when present
    - expired row may remain historically visible
    - expired row must not be treated as current active display truth

  projection:
    - projection may become stale independently from signed snapshot expiry
    - stale projection may be shown as stale only if product policy allows
    - stale projection must not be shown as fresh

  rights_verification:
    - verification expiry ends permission confidence window
    - after expiry, UI should prefer unavailable/restricted until new authoritative result arrives

# ------------------------------------------------------------
# 2. RETENTION RULES
# ------------------------------------------------------------

retention_rules:
  current_reference_rows:
    - keep single current row per asset per surface
    - older facts move to historical interpretation, not duplicate current rows

  history_rows:
    - keep for replay/audit
    - do not prune silently during active design/runtime bring-up phase

  projection_rows:
    - keep current rebuildable projection row
    - older projection history optional if separately introduced later
    - current design does not require multi-version projection history table

  local_view_config:
    - keep current presentation-only state only
    - not an audit replacement

# ------------------------------------------------------------
# 3. REFRESH RULES
# ------------------------------------------------------------

refresh_rules:
  projection_refresh:
    trigger_when:
      - authoritative projection refresh result arrives
      - current projection absent
      - current projection marked stale by freshness policy
    do_not_trigger_meaning:
      - not a Persona canonical mutation
      - not a local truth rewrite

  reference_refresh:
    trigger_when:
      - newer authoritative snapshot apply result arrives
    do_not_do:
      - do not self-promote old local data into fresh reference

# ------------------------------------------------------------
# 4. UI EXPIRY INTERPRETATION
# ------------------------------------------------------------

ui_expiry_interpretation:
  active:
    - show normal signed snapshot based display

  stale_projection:
    - show stale indicator if permitted
    - optionally request refresh path
    - do not hide that it is stale

  expired_reference:
    - show expired or unavailable
    - do not present expired reference as current authoritative display

  verification_expired:
    - show restricted/unavailable if rights confirmation is required

# ------------------------------------------------------------
# 5. DATA LIFECYCLE JUDGEMENT
# ------------------------------------------------------------

data_lifecycle_judgement:
- retain reference/history for audit and replay
- refresh only from authoritative result flow
- expiry reduces freshness/availability, not historical traceability
- projection lifecycle remains subordinate to signed snapshot rule
