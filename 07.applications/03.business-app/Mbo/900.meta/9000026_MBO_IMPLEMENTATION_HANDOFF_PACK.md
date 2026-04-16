# ============================================================
# MBO IMPLEMENTATION HANDOFF PACK
# ============================================================

status: draft-handoff
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

purpose:
Provides an implementation-facing handoff package
for continuing Mbo after the current design fixation phase.

# ============================================================
# 0. CURRENT CONCLUSION
# ============================================================

current_conclusion:
Mbo has reached a strong canonical design-fixed state.

fixed_product_position:
Mbo is an execution-centered
goal and evaluation management application.

it_is_not:
- not only a goal sheet tool
- not only an evaluation sheet tool

it_is:
- objective definition front
- action execution management front
- review and evaluation governance front
- ERP transfer preparation front

# ============================================================
# 1. GLOBAL REQUIREMENTS
# ============================================================

mandatory_global_requirements:
- multilingual support
- multi-currency support
- iphone support
- android support
- pc support
- tablet support

# ============================================================
# 2. FORMAL FUNCTION SCOPE
# ============================================================

formal_scope:
- priority A included
- priority B included
- priority C deferred

major_fixed_functions:
- objective CRUD
- objective templates
- department templates
- action plan management
- progress logs
- blocker and next-action logs
- review schedules
- bulk review schedules
- review logs
- manager comment templates
- evaluation draft
- evaluation confirmation
- final lock
- calibration support
- interview memos
- evidence references
- task links
- project links
- KPI dashboard
- aggregation export
- reminder batch send
- executive summary
- ERP transmission history
- ERP resend control
- reopen governance

# ============================================================
# 3. KEY GOVERNANCE DECISIONS
# ============================================================

key_governance_decisions:
- permissions are role-based
- evaluation confirmation creates final lock
- normal edits are blocked after lock
- reopen is exceptional and governed
- transferred reopen is stricter than finalized reopen
- ERP transmission uses finalized snapshot semantics
- resend preserves history
- dashboard counts are role-scoped and period-scoped

# ============================================================
# 4. KEY USER ROLES
# ============================================================

fixed_roles:
- objective_owner
- manager
- evaluator
- HR_operator
- executive_viewer
- department_template_admin
- system_auditor

# ============================================================
# 5. KEY FIXED FILES TO READ FIRST
# ============================================================

read_first_files:
- 000_MBO_INDEX.md
- 000_MBO_OVERVIEW.md
- 00_MBO_INTEGRATED.md

architecture_priority_files:
- 0200007_MBO_EXPANDED_FEATURE_ARCHITECTURE.md
- 0200008_MBO_EXPANDED_SCREEN_ARCHITECTURE.md
- 0200009_MBO_SCREEN_DETAIL_ARCHITECTURE.md
- 0200010_MBO_DASHBOARD_AND_KPI_ARCHITECTURE.md

runtime_governance_files:
- 0400005_MBO_STATE_TRANSITION_RUNTIME.md
- 0400006_MBO_FINAL_LOCK_RUNTIME.md
- 0800003_MBO_LOCK_AND_REOPEN_POLICY.md
- 0800004_MBO_REOPEN_GOVERNANCE_POLICY.md
- 1000003_MBO_PERMISSION_MATRIX_SECURITY.md
- 1000004_MBO_REOPEN_GOVERNANCE_SECURITY.md

API_and_SQL_files:
- 1200007_MBO_API_EXACT_PAYLOAD.md
- 0600007_MBO_ERP_EXACT_OUTBOUND_PAYLOAD.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200024_MBO_SQL_EXECUTION_ORDER_PACK.md
- 1200025_MBO_SQL_TEST_DATA_SAMPLE_PACK.sql
- 1200027_MBO_DDL_VALIDATION_CHECKLIST.md

# ============================================================
# 6. DATABASE STATUS
# ============================================================

database_status:
The design already includes:
- table architecture
- exact create table SQL
- check constraints
- indexes
- helper views
- updated_at triggers
- RLS direction
- master/seed data
- sample test data
- validation checklist

database_readiness:
DB design is ready for:
- phased SQL execution
- integrated one-pass execution
- validation with sample data
- implementation contract reference

# ============================================================
# 7. IMPLEMENTATION RECOMMENDED ORDER
# ============================================================

recommended_implementation_order:

  phase_01_backend_contract:
    - confirm API exact payload documents
    - map backend endpoint responsibilities
    - confirm ERP outbound payload mapping

  phase_02_database_execution:
    - execute phased SQL pack
    - apply seed/master data
    - apply sample data
    - run validation checklist

  phase_03_backend_core:
    - objective APIs
    - action plan APIs
    - progress APIs
    - review schedule/log APIs
    - evaluation confirm APIs
    - ERP history/resend APIs

  phase_04_backend_governance:
    - alert/reminder job handling
    - reopen governance flow
    - dashboard aggregate queries

  phase_05_frontend_core:
    - objective list/detail/create
    - action plan screens
    - progress update/history
    - review schedule/log
    - evaluation draft/confirm

  phase_06_frontend_extended:
    - templates
    - KPI dashboard
    - export
    - reminder batch send
    - executive summary
    - ERP resend control
    - reopen governance screens

# ============================================================
# 8. WHAT REMAINS UNIMPLEMENTED
# ============================================================

not_yet_implemented_here:
- actual backend source code
- actual frontend source code
- production auth wiring details
- production migration framework integration
- production cron/job runner details
- common component full design in separate chat

# ============================================================
# 9. COMMON COMPONENT BOUNDARY
# ============================================================

common_component_boundary:
Common component candidates were already extracted separately.
Do not redesign them inside Mbo implementation unless necessary.

remain_Mbo_specific:
- objective domain semantics
- period semantics
- evaluation confirmation semantics
- ERP outbound business meaning
- execution-centered dashboard meaning

# ============================================================
# 10. NATURAL NEXT ACTIONS
# ============================================================

natural_next_actions:
- generate executable quick-check SQL pack
- generate backend implementation task breakdown
- generate frontend implementation task breakdown
- generate final integrated dump if needed

