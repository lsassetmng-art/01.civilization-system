# ============================================================
# BUSINESS AI WORKER IMPLEMENTATION ROADMAP FIXED
# ============================================================

status: canonical
layer: development
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed implementation roadmap
for Business AI Worker.

# ============================================================
# 1. ROADMAP PRINCIPLE
# ============================================================

principle:
Build control first,
then capacity,
then protected advisory,
then execution work,
then embedded app usage,
then hardening.

reason:
If UI or app-side work starts before foundation control,
lending truth, reservation truth, disclaimer truth,
and approval boundaries will fragment.

# ============================================================
# 2. FIXED PHASE ORDER
# ============================================================

fixed_phase_order:
- phase_1_foundation_control
- phase_2_capacity_and_matching
- phase_3_protected_advisory
- phase_4_execution_work
- phase_5_embedded_app_surfaces
- phase_6_monitoring_audit_hardening

# ============================================================
# 3. PHASE 1 FOUNDATION CONTROL
# ============================================================

phase_name:
phase_1_foundation_control

goal:
Establish BusinessOS foundation web as the single worker control tower.

must_complete:
- worker registry
- rank registry
- subscription handling
- lending request endpoint
- release endpoint
- status query endpoint
- exact enums fixed
- exact payload fixed
- physical schema fixed

exit_criteria:
- lend request can return granted / queued / rejected
- release updates lending and slot state
- status query returns canonical state
- no consumer app owns lending truth

# ============================================================
# 4. PHASE 2 CAPACITY AND MATCHING
# ============================================================

phase_name:
phase_2_capacity_and_matching

goal:
Make governed capacity and compatible matching work correctly.

must_complete:
- slot capacity logic
- reservation queue
- queue promotion
- specialty registry
- knowledge-depth registry
- world-scope validation
- activity-mode validation
- capability-aware match engine

exit_criteria:
- free slot + compatible worker => granted
- no slot + compatible worker => queued
- incompatible worker => rejected
- queue promotion works after release

# ============================================================
# 5. PHASE 3 PROTECTED ADVISORY
# ============================================================

phase_name:
phase_3_protected_advisory

goal:
Support governed advisory sessions including protected domains.

must_complete:
- disclaimer fetch endpoint
- consent submit endpoint
- advisory start endpoint
- advisory session persistence
- protected domain mapping
- consent validity checks
- escalation linkage

protected_domains:
- medical
- legal
- high-risk management advice

exit_criteria:
- protected advisory cannot start without disclaimer and consent
- non-protected advisory can start without protected flow
- advisory sessions are auditable

# ============================================================
# 6. PHASE 4 EXECUTION WORK
# ============================================================

phase_name:
phase_4_execution_work

goal:
Support governed execution work flows.

must_complete:
- execution start endpoint
- execution task persistence
- output handoff endpoint
- review_required logic
- approval_required logic
- marketplace / maintenance / bugfix / testing path support

examples:
- marketplace listing
- yahoo auctions listing
- mercari listing
- night maintenance
- bug fix support
- testing support

exit_criteria:
- execution task can start and track status
- handoff can become handoff_ready
- review and approval gates block when required

# ============================================================
# 7. PHASE 5 EMBEDDED APP SURFACES
# ============================================================

phase_name:
phase_5_embedded_app_surfaces

goal:
Allow first-party business apps to consume governed worker capacity.

must_complete:
- embedded app request flow
- app-surface binding
- routine assistance linkage
- workflow-completion release logic

examples:
- PocketSecretary
- expense
- CRM
- project
- MBO

exit_criteria:
- embedded surfaces can request workers through foundation
- embedded surfaces do not duplicate worker control logic
- routine assistance releases correctly on completion

# ============================================================
# 8. PHASE 6 MONITORING AUDIT HARDENING
# ============================================================

phase_name:
phase_6_monitoring_audit_hardening

goal:
Make the platform operable and safe at scale.

must_complete:
- audit trace
- queue monitoring
- slot anomaly monitoring
- failed handoff monitoring
- protected advisory audit
- anti-bypass checks
- fairness review support
- runbook support

exit_criteria:
- end-to-end trace exists
- incidents are detectable
- protected-domain misuse is visible
- queue starvation is reviewable

# ============================================================
# 9. FIXED BUILD ORDER INSIDE PHASES
# ============================================================

build_order_inside_phase:
1. model
2. interface
3. implementation
4. runtime
5. flow verification
6. operations hooks
7. policy/security verification

rule:
Do not build UI-first for worker governance features.

# ============================================================
# 10. CONSUMER APP START TIMING
# ============================================================

advisory_apps_may_start_after:
- phase_3_protected_advisory

execution_work_apps_may_start_after:
- phase_4_execution_work

embedded_app_surfaces_may_start_after:
- phase_5_embedded_app_surfaces

rule:
Consumer apps may prototype earlier,
but must not claim canonical behavior
before the corresponding foundation phase exits.

# ============================================================
# 11. FIXED TEST GATES
# ============================================================

gate_1_foundation:
- payload exactness pass
- enum exactness pass
- lending/release/status pass

gate_2_capacity:
- reservation pass
- queue promotion pass
- specialty/depth/world matching pass

gate_3_advisory:
- disclaimer pass
- consent pass
- protected advisory blocking pass

gate_4_execution:
- execution task pass
- review/approval blocking pass
- output handoff pass

gate_5_consumer:
- embedded app consumption pass
- advisory app integration pass
- execution app integration pass

gate_6_hardening:
- audit pass
- monitoring pass
- anti-bypass pass

# ============================================================
# 12. STOP CONDITIONS
# ============================================================

must_stop_and_fix_before_next_phase_when:
- exact payload and DB mapping diverge
- enum values diverge between API and DB
- consumer app bypasses foundation
- protected advisory starts without consent
- execution output bypasses review/approval
- queue promotion breaks rank/capacity rules

# ============================================================
# 13. OFFICIAL SUMMARY
# ============================================================

The fixed implementation order is:

1. foundation control
2. capacity and matching
3. protected advisory
4. execution work
5. embedded app surfaces
6. monitoring, audit, and hardening

This order is mandatory
to preserve governance and avoid fragmented worker truth.
