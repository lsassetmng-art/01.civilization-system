# ============================================================
# STATIC ART OS BLOCKER RISK EVIDENCE UPDATE GUIDE
# ============================================================

status: update-guide
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Explain what must be updated once actual implementation or execution begins.

update_when_running:
  blocker_register:
    file:
      - 920.meta/056.signoff_pack/000002_STATIC_ART_OS_BLOCKER_REGISTER.md
    update_when:
      - execution is blocked
      - precheck/apply/verify fails
      - required dependency or environment is missing

  risk_register:
    file:
      - 920.meta/056.signoff_pack/000003_STATIC_ART_OS_RISK_REGISTER.md
    update_when:
      - non-blocking but important risk is discovered
      - Persona boundary risk appears
      - migration/API/UI sequencing risk appears

  execution_session_log:
    file:
      - 920.meta/084.execution_logbook_pack/000001_STATIC_ART_OS_EXECUTION_SESSION_LOG_TEMPLATE.md
    update_when:
      - a concrete run starts
      - command list and rc need preservation

  post_run_summary:
    file:
      - 920.meta/084.execution_logbook_pack/000002_STATIC_ART_OS_POST_RUN_SUMMARY_TEMPLATE.md
    update_when:
      - a grouped run ends
      - next-step judgement is needed

  run_workspace:
    file:
      - 132.operations/132540_staticart_prepare_execution_run.sh
    update_when:
      - a new execution run begins
      - you need a fresh timestamped evidence folder

important_rule:
- evidence is additive
- do not overwrite historical failed runs
- keep Persona boundary confirmation visible if Persona-linked work is touched

minimum_update_rule:
- if any execution command actually runs, capture command outcome somewhere under execution run workspace
