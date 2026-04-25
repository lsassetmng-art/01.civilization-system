# ============================================================
# STATIC ART OS PERSONA REFERENCE DEPRECATION AND RETIREMENT EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define exact deprecation and retirement rules for Persona reference
behavior inside StaticArtOS.

core_rule:
- deprecation must remain boundary-safe
- retirement must not fabricate local substitute truth
- safe disablement is preferable to wrong continued rendering

# ------------------------------------------------------------
# 1. DEPRECATION TARGETS
# ------------------------------------------------------------

deprecation_targets:
- target_surface behavior
- payload field
- projection interpretation path
- reconciliation rule
- monitoring metric / alert
- local UI presentation option
- rollout feature flag

# ------------------------------------------------------------
# 2. DEPRECATION PHASES
# ------------------------------------------------------------

deprecation_phases:
  phase_1_announce:
    - identify deprecated item
    - state replacement path
    - state safe fallback behavior

  phase_2_parallel_support:
    - old and new path may coexist temporarily if safe
    - unsupported readers must remain safe by absence/restricted/stale-safe handling

  phase_3_disable_default:
    - old path no longer default
    - logs/alerts highlight remaining dependence if needed

  phase_4_retire:
    - old path removed or formally inactive
    - no fabricated substitute truth

# ------------------------------------------------------------
# 3. RETIREMENT RULES
# ------------------------------------------------------------

retirement_rules:
- remove/disable only after safe replacement or explicit unavailable behavior exists
- do not retire the only boundary-safe interpretation without replacement
- retirement of Persona reference feature is allowed only if surfaces fall back to unavailable/restricted/stale-safe
- retirement must preserve evidence and audit explainability

# ------------------------------------------------------------
# 4. FORBIDDEN DEPRECATION BEHAVIOR
# ------------------------------------------------------------

forbidden_deprecation_behavior:
- replacing signed snapshot basis with local truth fallback
- removing restriction handling while keeping fresh rendering
- silently changing deprecated path into broader local authority
- hiding retirement impact from rollout/release review

# ------------------------------------------------------------
# 5. FINAL DEPRECATION JUDGEMENT
# ------------------------------------------------------------

final_deprecation_judgement:
- deprecation/retirement is successful only when safety and boundary integrity remain intact
