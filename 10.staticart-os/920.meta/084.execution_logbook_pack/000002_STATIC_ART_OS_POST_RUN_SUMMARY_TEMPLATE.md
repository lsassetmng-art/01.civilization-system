# ============================================================
# STATIC ART OS POST RUN SUMMARY TEMPLATE
# ============================================================

status: template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Summarize the outcome after one execution run or one grouped run.

run_summary:
  run_window:
  run_type:
    - read_only_review
    - phase1_execution
    - phase_check_execution
    - persona_rule_confirmation
    - mixed
  success_scope:
    - optional
  failed_scope:
    - optional
  blocker_count:
  warning_count:
  logs_location:
  evidence_location:

judgement:
  ready_for_next_step: yes_or_no
  requires_fix_before_next_step: yes_or_no
  persona_boundary_intact: yes_or_no

recommended_next_step:
- optional
