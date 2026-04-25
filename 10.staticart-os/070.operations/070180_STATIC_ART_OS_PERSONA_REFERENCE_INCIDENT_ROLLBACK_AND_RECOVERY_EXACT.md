# ============================================================
# STATIC ART OS PERSONA REFERENCE INCIDENT ROLLBACK AND RECOVERY EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define exact incident, rollback, and recovery expectations for Persona
reference behavior in StaticArtOS.

core_rule:
- rollback/recovery must preserve Persona boundary
- recovery must prefer safe unavailable/stale state over fabricated truth
- rollback may disable local feature surfaces, not rewrite upstream truth

# ------------------------------------------------------------
# 1. INCIDENT CLASSES
# ------------------------------------------------------------

incident_classes:
  class_A_boundary_breach:
    examples:
      - direct mutation path exposed
      - Persona truth-like local fallback introduced
      - forbidden write route active

  class_B_display_integrity_failure:
    examples:
      - wrong signed snapshot rendered
      - expired/restricted state shown as active
      - mismatched projection used

  class_C_operational_degradation:
    examples:
      - projection refresh lag
      - reconciliation backlog
      - duplicate delivery storm

# ------------------------------------------------------------
# 2. SAFE ROLLBACK OPTIONS
# ------------------------------------------------------------

safe_rollback_options:
- disable Persona-linked display surface temporarily
- fallback to unavailable/restricted/stale-safe UI state
- stop accepting affected reflection path temporarily
- require fresh authoritative result before re-enable

forbidden_rollback_options:
- manually editing local rows to imitate upstream Persona truth
- silently rewriting restricted state to allowed
- inventing missing projection content locally

# ------------------------------------------------------------
# 3. RECOVERY STEPS
# ------------------------------------------------------------

recovery_steps:
  step_1_contain:
    - stop harmful rendering or harmful write path
    - preserve evidence/logs

  step_2_classify:
    - determine incident class and affected surfaces
    - identify whether boundary breach occurred

  step_3_reconcile:
    - run reconciliation/drift review
    - request authoritative refresh/replay if needed

  step_4_restore:
    - restore local read-side only after authoritative alignment is regained
    - re-enable surfaces progressively

  step_5_record:
    - update blocker/risk/evidence artifacts
    - keep incident timeline

# ------------------------------------------------------------
# 4. INCIDENT JUDGEMENT
# ------------------------------------------------------------

incident_judgement:
- safest recovery state is temporary unavailability, not fabricated truth
- boundary preservation outranks cosmetic display continuity
