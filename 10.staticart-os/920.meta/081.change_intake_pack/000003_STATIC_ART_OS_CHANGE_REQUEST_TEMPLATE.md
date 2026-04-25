# ============================================================
# STATIC ART OS CHANGE REQUEST TEMPLATE
# ============================================================

status: template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

change_request:
  title:
  objective:
  scope_type:
    - wording
    - structure
    - launcher
    - review_pack
    - execution_pack
    - persona_rule_related
    - maintenance
  target_files:
    - TBD
  affects_root_navigation:
    - yes_or_no
  affects_launcher_registry:
    - yes_or_no
  affects_traceability_pack:
    - yes_or_no
  affects_persona_rule_boundary:
    - yes_or_no
  requires_readonly_sweep_after_change:
    - yes_or_no
  requires_persona_recheck_after_change:
    - yes_or_no
  do_not_break:
    - final landing portal
    - status dashboard
    - master final bundle
    - persona non-duplication rule
    - read-only launcher expectations
  notes:
