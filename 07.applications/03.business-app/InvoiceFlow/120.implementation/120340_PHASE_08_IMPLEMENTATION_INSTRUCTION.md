# ============================================================
# PHASE 08 IMPLEMENTATION INSTRUCTION
# IF-PHASE-08 Refinement And Operator Optimization
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-08
phase_name: Refinement And Operator Optimization

purpose:
Refines the application for sustained operational use
through saved filters, layout optimization,
performance hardening, and multilingual/multicurrency polish.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Improve practical day-to-day usability,
query responsiveness,
and multi-device / multilingual / multicurrency quality
after the core business functions are stable.

meaning_of_done:
- saved invoice list filters work
- top operational screens are optimized for phone/tablet/pc
- high-traffic list queries are improved
- dashboard information density is improved
- multilingual text expansion is handled safely
- multicurrency display remains unambiguous in all key screens

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 060.integration/060290_SAVE_INVOICE_LIST_FILTER_EXACT_PAYLOAD.md
- 090.interface/090120_DASHBOARD_INTERFACE.md
- 090.interface/090130_INVOICE_DETAIL_INTERFACE.md
- 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
- 090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md
- 110.infrastructure/110110_NON_FUNCTIONAL_REQUIREMENTS.md
- 110.infrastructure/110120_MULTI_DEVICE_LAYOUT_REQUIREMENTS.md
- 120.implementation/120240_PHASE_08_TASK_BREAKDOWN.md
- 900.meta/900090_FINAL_REVIEW_CHECKPOINTS.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement save invoice list filter endpoint
- implement read saved filter behavior where needed
- optimize invoice list query performance
- optimize collection dashboard aggregation performance
- optimize bank candidate list retrieval where needed
- harden error-code to UI-state consistency
- confirm index usage on high-traffic queries

backend_required_payload_fields:
- filter_preset_id
- preset_name
- saved_at

backend_business_rules:
- saved filters must remain company-scoped and actor-safe
- optimization must not remove authority or status fields
- error handling must remain explicit

backend_forbidden:
- do not optimize by dropping essential visibility fields
- do not create cross-company filter leakage
- do not hide slow-query problems by reducing critical data unexpectedly

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create saved filter persistence if required by implementation choice
- add missing indexes discovered from operational usage
- review summary update strategy for customer_outstanding_summary
- review archive/retention readiness for large operational history
- confirm index support for overdue, next_action_date, status, and authority queries

data_integrity_focus:
- saved filters must remain actor/company scoped
- optimization must preserve result correctness
- large-history handling must preserve auditability

data_forbidden:
- no unsafe cache that returns stale authority meaning
- no ambiguous cross-currency summary merge
- no archival shortcut that breaks audit trail

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement saved filter UI for invoice list
- refine dashboard widget priority and density
- refine invoice detail top-section visibility
- refine payment confirmation visibility of totals/differences
- refine collection dashboard readability
- optimize phone/tablet layouts
- test multilingual overflow and fallback rendering
- test multicurrency clarity in lists and detail screens
- reduce operator clicks for common next actions

frontend_ui_requirements:
- most urgent actions must remain visible on phone
- saved filters must be understandable and easy to reuse
- warnings and authority badges must still remain obvious after polish
- multilingual text must not break critical controls
- multicurrency display must keep code/symbol clarity

frontend_forbidden:
- do not trade safety visibility for visual minimalism
- do not bury next-action controls during polishing
- do not make filter saving confusing or destructive
- do not remove critical warnings for a cleaner look

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- save filter success
- saved filter recall success where implemented
- invoice list performance smoke test
- collection dashboard performance smoke test
- phone layout critical-widget visibility
- tablet layout critical-widget visibility
- multilingual overflow checks
- multicurrency display checks
- regression checks for authority badge and ERP eligibility visibility

minimum_test_matrix:
- saved filter create
- high-traffic invoice list query
- high-traffic collection dashboard query
- phone dashboard visibility
- tablet dashboard visibility
- multilingual label overflow
- multicurrency list/detail clarity

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review daily operator speed and friction
- review dashboard priority ordering
- review saved filter usefulness
- review multilingual rendering quality
- review multicurrency clarity
- review performance improvement realism

review_focus:
- refinement must help operation, not hide meaning
- polish must preserve authority and safety signals
- speed improvements must preserve correctness

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- saved filters work where implemented
- high-traffic operational screens are meaningfully improved
- phone/tablet layouts support daily use
- multilingual expansion issues are addressed
- multicurrency display remains explicit
- regression checks pass for authority/eligibility visibility

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- redesigning core authority boundary
- replacing core APIs with different semantics
- removing explicit safety/error signaling for aesthetic reasons

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when InvoiceFlow feels practical for repeated daily use
without sacrificing the explicitness and safety established in earlier phases.
