# ============================================================
# MBO FINAL INTEGRATED REBUILT
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

purpose:
Provides a rebuilt final integrated summary
for the whole Mbo design and implementation-preparation set.

# ============================================================
# 0. PRODUCT IDENTITY
# ============================================================

product_identity:
Mbo is an execution-centered goal and evaluation management application.

not_only:
- not only a goal sheet tool
- not only an evaluation sheet tool

actual_meaning:
- objective definition front
- action planning front
- progress evidence front
- review continuity front
- evaluation confirmation front
- ERP transfer preparation front

# ============================================================
# 1. GLOBAL REQUIREMENTS
# ============================================================

global_requirements:
- multilingual support mandatory
- multi-currency support mandatory
- iphone support mandatory
- android support mandatory
- pc support mandatory
- tablet support mandatory

# ============================================================
# 2. FORMAL SCOPE
# ============================================================

formal_scope:
- priority A included
- priority B included
- priority C deferred

major_function_scope:
- objective CRUD
- template usage
- department templates
- action plan breakdown
- progress logs
- blocker and next-action logs
- review schedules
- bulk review schedules
- review logs
- manager comment templates
- evaluation draft
- evaluation confirm
- final lock
- calibration support
- interview memos
- evidence references
- task links
- project links
- KPI dashboard
- export jobs
- reminder batch jobs
- executive summary
- ERP history
- ERP resend control
- reopen governance

# ============================================================
# 3. GOVERNANCE FIXED
# ============================================================

governance_fixed:
- permissions are role-based
- evaluation confirmation creates final lock
- normal editing is blocked after lock
- reopen is exceptional and governed
- transferred reopen is stricter than finalized reopen
- ERP transmission uses finalized snapshot semantics
- resend preserves history
- dashboard counts are role-scoped and period-scoped

# ============================================================
# 4. SQL / DB FIXED
# ============================================================

database_fixed:
- table architecture fixed
- create table SQL fixed
- check constraints fixed
- index strategy fixed
- helper views fixed
- updated_at trigger strategy fixed
- RLS direction fixed
- master/seed data fixed
- sample test data fixed
- executable quick-check SQL fixed

# ============================================================
# 5. IMPLEMENTATION PREPARATION FIXED
# ============================================================

implementation_preparation_fixed:
- backend task breakdown fixed
- frontend task breakdown fixed
- first-slice start order fixed
- work instructions fixed
- progress ledgers fixed
- issue/deviation template fixed
- acceptance checklist fixed
- acceptance runbook fixed

# ============================================================
# 6. PRACTICAL CONCLUSION
# ============================================================

practical_conclusion:
Mbo has already crossed the point
where redesign-first continuation is useful.

current_best_next_action:
implementation-first continuation

