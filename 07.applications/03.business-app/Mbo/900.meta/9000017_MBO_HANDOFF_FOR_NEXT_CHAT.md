# ============================================================
# MBO HANDOFF FOR NEXT CHAT
# ============================================================

status: draft-handoff
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

# ============================================================
# 0. CURRENT POSITION
# ============================================================

Mbo has been fixed as:

execution-centered goal and evaluation management application

It is not only a goal sheet tool
and not only an evaluation sheet tool.

The design now covers:
- objective definition
- action planning
- progress logging
- review scheduling and logging
- evaluation drafting and confirmation
- final lock governance
- ERP outbound transfer
- ERP resend handling
- alert and reminder rules
- reopen governance
- dashboard and KPI rules

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
# 2. PRODUCT POSITION
# ============================================================

fixed_product_position:
Mbo should satisfy ordinary HR-evaluation expectations
while differentiating through:

- action-plan depth
- blocker and next-action continuity
- final lock governance
- ERP linkage readiness
- ERP resend traceability
- execution-centered dashboard visibility

# ============================================================
# 3. FORMAL SCOPE
# ============================================================

formal_scope:
- priority A included
- priority B included
- priority C deferred

major_formalized_features:
- objective creation/edit
- objective templates
- department templates
- action plan breakdown
- progress logs
- blocker and next-action logs
- review schedules
- bulk review schedules
- review logs
- manager comment templates
- evaluation draft
- evaluation confirmation
- calibration support
- interview memos
- evidence references
- task links
- project links
- KPI dashboard
- aggregation export
- reminder batch send
- executive summary
- ERP history
- ERP resend control

# ============================================================
# 4. KEY GOVERNANCE DECISIONS
# ============================================================

governance_decisions:
- permissions are role-based
- final confirmation creates lock
- normal editing is blocked after lock
- reopen is exceptional and governed
- transferred-record reopen is stricter than finalized-only reopen
- ERP transmission uses finalized snapshot semantics
- resend must preserve history

# ============================================================
# 5. KEY FIXED FILES
# ============================================================

key_fixed_files:
- 000_MBO_INDEX.md
- 000_MBO_OVERVIEW.md
- 00_MBO_INTEGRATED.md
- 0200007_MBO_EXPANDED_FEATURE_ARCHITECTURE.md
- 0200008_MBO_EXPANDED_SCREEN_ARCHITECTURE.md
- 0200009_MBO_SCREEN_DETAIL_ARCHITECTURE.md
- 0200010_MBO_DASHBOARD_AND_KPI_ARCHITECTURE.md
- 0300007_MBO_EXPANDED_MODEL_SUPPLEMENT.md
- 0400005_MBO_STATE_TRANSITION_RUNTIME.md
- 0400006_MBO_FINAL_LOCK_RUNTIME.md
- 0600007_MBO_ERP_EXACT_OUTBOUND_PAYLOAD.md
- 0700005_MBO_ALERT_AND_REMINDER_OPERATIONS.md
- 0700006_MBO_EXCEPTION_OPERATIONS.md
- 0700007_MBO_DASHBOARD_AND_KPI_OPERATIONS.md
- 0800003_MBO_LOCK_AND_REOPEN_POLICY.md
- 0800004_MBO_REOPEN_GOVERNANCE_POLICY.md
- 1000003_MBO_PERMISSION_MATRIX_SECURITY.md
- 1000004_MBO_REOPEN_GOVERNANCE_SECURITY.md
- 1200007_MBO_API_EXACT_PAYLOAD.md
- 1200008_MBO_PERMISSION_MATRIX_IMPLEMENTATION.md
- 1200009_MBO_STATE_AND_LOCK_IMPLEMENTATION.md
- 1200010_MBO_ERP_OUTBOUND_IMPLEMENTATION.md
- 1200011_MBO_ALERT_AND_REMINDER_IMPLEMENTATION.md
- 1200012_MBO_REOPEN_GOVERNANCE_IMPLEMENTATION.md
- 1200013_MBO_DASHBOARD_AND_KPI_IMPLEMENTATION.md

# ============================================================
# 6. COMMON COMPONENT STATUS
# ============================================================

common_component_status:
Common component candidates were separated already.
Common-component full design must continue in another chat,
not inside Mbo-specific design.

# ============================================================
# 7. NATURAL NEXT STEPS
# ============================================================

natural_next_steps:
- DDL fixation
- API/backend contract breakdown
- frontend implementation planning
- implementation phase roadmap
- final integrated rebuilt summary if needed

