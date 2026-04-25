# ============================================================
# STATIC ART OS PERSONA REFERENCE VERSIONING AND COMPATIBILITY EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define versioning and compatibility rules for Persona reference
behavior inside StaticArtOS over time.

core_rule:
- version change must not blur Persona boundary
- compatibility must prefer safe absence/stale-safe behavior over wrong fresh behavior
- versioning applies to event/API/read-side contract behavior, not Persona ownership

# ------------------------------------------------------------
# 1. VERSIONED SURFACES
# ------------------------------------------------------------

versioned_surfaces:
- event contract version
- internal reflection payload version
- read-side API payload version
- UI rendering contract version where needed
- local projection interpretation rule version
- reconciliation / drift rule version if behavior changes materially

# ------------------------------------------------------------
# 2. COMPATIBILITY RULES
# ------------------------------------------------------------

compatibility_rules:
  backward_compatible_change:
    examples:
      - additive field in internal payload
      - additive read-side field
      - additive audit metadata
    requirement:
      - existing boundary-safe consumers keep working

  conditionally_compatible_change:
    examples:
      - new target surface introduced
      - new result_code introduced
      - additional restriction path introduced
    requirement:
      - unsupported consumers must fail safe
      - unavailable/stale-safe/restricted-safe state required

  incompatible_change:
    examples:
      - changed meaning of signed_snapshot_id
      - changed boundary from signed snapshot to local truth
      - changed ownership assumption
    requirement:
      - explicit redesign and controlled change intake required

# ------------------------------------------------------------
# 3. VERSION ADVANCE RULES
# ------------------------------------------------------------

version_advance_rules:
- increment version when semantics change materially
- do not increment version for typo-only or explanatory wording fixes
- document compatibility impact before rollout
- never hide a boundary-affecting semantic change inside a minor wording update

# ------------------------------------------------------------
# 4. SAFE DEFAULTS
# ------------------------------------------------------------

safe_defaults:
- unknown result or unsupported field path should degrade to unavailable/restricted/stale-safe
- unsupported version must not be interpreted as implicit approval or fresh state
- compatibility adapter must not invent Persona truth

# ------------------------------------------------------------
# 5. FINAL VERSIONING JUDGEMENT
# ------------------------------------------------------------

final_versioning_judgement:
- compatibility exists to preserve safety and boundary correctness
- incompatibility requires explicit redesign, not silent drift
