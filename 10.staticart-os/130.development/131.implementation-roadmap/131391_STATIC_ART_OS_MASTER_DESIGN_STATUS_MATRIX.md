# ============================================================
# STATIC ART OS MASTER DESIGN STATUS MATRIX
# ============================================================

status: design-status-matrix
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

matrix:
  root_navigation:
    status:
      - complete
    anchor:
      - 000_STATIC_ART_OS_INDEX.md
      - 000_STATIC_ART_OS_OVERVIEW.md
      - 000_STATIC_ART_OS_ROADMAP.md

  portal_and_dashboard:
    status:
      - complete
    anchor:
      - 000001_STATIC_ART_OS_PORTAL.md
      - 000002_STATIC_ART_OS_STATUS_DASHBOARD.md
      - 000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md

  standalone_review_and_handoff:
    status:
      - complete
    anchor:
      - 132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md
      - 131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md
      - 131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md

  signoff_gate_healthcheck:
    status:
      - complete
    anchor:
      - 132.operations/132190_staticart_healthcheck.sh
      - 132.operations/132210_staticart_signoff_portal.sh
      - 132.operations/132240_staticart_pre_implementation_gate.sh

  persona_boundary_policy:
    status:
      - complete
    anchor:
      - 080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md
      - 080.policy/080170_STATIC_ART_OS_PERSONA_DUPLICATION_AUDIT_CHECKLIST.md
      - 080.policy/080180_STATIC_ART_OS_PERSONA_SNAPSHOT_REPLACEMENT_MATRIX.md
      - 080.policy/080190_STATIC_ART_OS_PERSONA_DIRECT_MUTATION_ABOLISH_LIST.md

  persona_exact_design:
    status:
      - complete
    anchor:
      - 060.integration/060160_STATIC_ART_OS_PERSONA_REFERENCE_EVENT_CONTRACT_EXACT.md
      - 121.db-implementation-prep/121270_STATIC_ART_OS_PERSONA_REFERENCE_DB_EXACT_SCHEMA.md
      - 122.api-implementation-prep/122370_STATIC_ART_OS_PERSONA_REFERENCE_API_EXACT_PAYLOAD.md
      - 123.ui-implementation-prep/123180_STATIC_ART_OS_PERSONA_REFERENCE_UI_STATEFLOW_EXACT.md
      - 124.test-implementation-prep/124180_STATIC_ART_OS_PERSONA_REFERENCE_TEST_EXACTNESS.md

  persona_integration_plan:
    status:
      - complete
    anchor:
      - 060.integration/060170_STATIC_ART_OS_PERSONA_REFERENCE_EXACTNESS_INTEGRATION_POLICY.md
      - 121.db-implementation-prep/121280_STATIC_ART_OS_PERSONA_REFERENCE_DB_IMPLEMENTATION_INSERTION_PLAN.md
      - 122.api-implementation-prep/122380_STATIC_ART_OS_PERSONA_REFERENCE_API_IMPLEMENTATION_INSERTION_PLAN.md
      - 123.ui-implementation-prep/123190_STATIC_ART_OS_PERSONA_REFERENCE_UI_IMPLEMENTATION_INSERTION_PLAN.md
      - 124.test-implementation-prep/124190_STATIC_ART_OS_PERSONA_REFERENCE_TEST_IMPLEMENTATION_INSERTION_PLAN.md
      - 131.implementation-roadmap/131380_STATIC_ART_OS_PERSONA_REFERENCE_IMPLEMENTATION_SEQUENCE_EXACT.md

  persona_sql_design:
    status:
      - complete
    anchor:
      - 121.db-implementation-prep/121290_STATIC_ART_OS_PERSONA_REFERENCE_SQL_EXACT_DDL.sql
      - 121.db-implementation-prep/121291_STATIC_ART_OS_PERSONA_REFERENCE_SQL_DDL_ASSUMPTION_NOTE.md

  persona_verify_only:
    status:
      - complete
    anchor:
      - 920.meta/091.persona_reference_sql_verify_only/000001_STATIC_ART_OS_PERSONA_REFERENCE_SQL_VERIFY_ONLY_REPORT.md
      - 920.meta/092.persona_reference_api_verify_only/000001_STATIC_ART_OS_PERSONA_REFERENCE_API_VERIFY_ONLY_REPORT.md
      - 920.meta/093.persona_reference_full_verify_only/000001_STATIC_ART_OS_PERSONA_REFERENCE_FULL_VERIFY_ONLY_REPORT.md

  execution_readiness:
    status:
      - complete in design scope
    anchor:
      - 920.meta/083.execution_queue_pack/000001_STATIC_ART_OS_EXECUTION_PRIORITY_QUEUE.md
      - 920.meta/084.execution_logbook_pack/000001_STATIC_ART_OS_EXECUTION_SESSION_LOG_TEMPLATE.md
      - 920.meta/085.execution_run_workspace_pack/000001_STATIC_ART_OS_EXECUTION_RUN_WORKSPACE_POLICY.md

  runtime_implementation:
    status:
      - pending
    anchor:
      - implementation not executed in this chat

status_rule:
- complete means design-ready in this chat scope
- pending means live implementation/execution has not been performed here
