# ============================================================
# BUSINESS AI WORKER EXACT ENUM FIXED
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed exact enum values
used across API, DB, runtime, and flow
for Business AI Worker.

# ============================================================
# 1. GENERAL RULE
# ============================================================

rule:
All enum values are case-sensitive fixed values.

rule:
API payload values, physical schema stored values,
runtime values, and flow values
must use exactly the same strings.

# ============================================================
# 2. RANK
# ============================================================

enum_name:
rank

fixed_values:
- Entry
- Standard
- High
- Extra

# ============================================================
# 3. ACTIVITY MODE
# ============================================================

enum_name:
activity_mode

fixed_values:
- embedded_app_routine_work
- advisory_consultation
- execution_work

# ============================================================
# 4. WORLD SCOPE
# ============================================================

enum_name:
world_scope

fixed_values:
- civilization_internal
- real_world
- cross_world

# ============================================================
# 5. KNOWLEDGE DEPTH
# ============================================================

enum_name:
knowledge_depth

fixed_values:
- basic
- practical
- advanced
- expert

# ============================================================
# 6. EMPLOYMENT STATUS
# ============================================================

enum_name:
employment_status

fixed_values:
- planned
- subscribed
- active
- suspended
- retired

# ============================================================
# 7. SLOT STATUS
# ============================================================

enum_name:
slot_status

fixed_values:
- free
- reserved
- occupied
- releasing
- unavailable

# ============================================================
# 8. LENDING STATUS
# ============================================================

enum_name:
lending_status

fixed_values:
- requested
- granted
- queued
- active
- released
- expired
- rejected

# ============================================================
# 9. RESERVATION STATUS
# ============================================================

enum_name:
reservation_status

fixed_values:
- queued
- promotable
- granted
- cancelled
- expired
- rejected

# ============================================================
# 10. ADVISORY SESSION STATUS
# ============================================================

enum_name:
advisory_session_status

fixed_values:
- pending_disclaimer
- pending_consent
- ready
- active
- escalated
- completed
- closed

# ============================================================
# 11. EXECUTION STATUS
# ============================================================

enum_name:
execution_status

fixed_values:
- drafted
- assigned
- in_progress
- review_required
- awaiting_approval
- handoff_ready
- completed
- failed
- cancelled

# ============================================================
# 12. HANDOFF STATUS
# ============================================================

enum_name:
handoff_status

fixed_values:
- preparing_output
- handoff_ready
- handoff_completed
- handoff_rejected
- handoff_failed

# ============================================================
# 13. CONSENT STATUS
# ============================================================

enum_name:
consent_status

fixed_values:
- required
- presented
- accepted
- declined
- expired

note:
If the physical table stores boolean accepted plus expires_at,
the logical consent status must still map only to these fixed values.

# ============================================================
# 14. BILLING STATUS
# ============================================================

enum_name:
billing_status

fixed_values:
- pending
- active
- suspended
- expired
- cancelled

# ============================================================
# 15. REVIEW STATUS
# ============================================================

enum_name:
review_status

fixed_values:
- not_required
- required
- in_review
- accepted
- rejected

# ============================================================
# 16. APPROVAL STATUS
# ============================================================

enum_name:
approval_status

fixed_values:
- not_required
- required
- awaiting_approval
- approved
- denied

# ============================================================
# 17. ESCALATION STATUS
# ============================================================

enum_name:
escalation_status

fixed_values:
- none
- suggested
- escalated
- resolved
- closed

# ============================================================
# 18. OUTCOME TYPE
# ============================================================

enum_name:
outcome_type

fixed_values:
- advisory_answer
- draft_generated
- task_linked
- work_started
- work_completed
- review_blocked
- approval_blocked
- rejected
- failed

# ============================================================
# 19. PRIORITY
# ============================================================

enum_name:
requested_priority

fixed_values:
- low
- normal
- high
- urgent

# ============================================================
# 20. RELEASE REASON
# ============================================================

enum_name:
release_reason

fixed_values:
- normal_completion
- timeout
- cancellation
- administrative_release
- failure_termination

# ============================================================
# 21. CONSULTATION TYPE EXAMPLES
# ============================================================

enum_name:
consultation_type

fixed_values_examples:
- erp_consulting
- management_consulting
- medical
- legal
- improvement_consultation

rule:
consultation_type may be extensible,
but protected-domain policy must bind to exact values where configured.

# ============================================================
# 22. TASK TYPE EXAMPLES
# ============================================================

enum_name:
task_type

fixed_values_examples:
- marketplace_listing
- yahoo_auctions_listing
- mercari_listing
- night_maintenance
- bug_fix_support
- testing_support

rule:
task_type may be extensible,
but app contracts must still use exact string values once chosen.

# ============================================================
# 23. ERROR CODE EXACT VALUES
# ============================================================

enum_name:
error_code

fixed_values:
- granted
- queued
- reservation_created
- released
- availability_checked
- advisory_started
- execution_started
- status_found
- handoff_ready
- consent_recorded
- disclaimer_required
- no_capacity
- rank_not_available
- subscription_limit_reached
- invalid_assignment_scope
- unauthorized_app_surface
- queue_full
- worker_unavailable
- company_not_subscribed
- policy_rejected
- consent_missing
- specialty_mismatch
- world_scope_mismatch
- approval_denied

# ============================================================
# 24. EXACT ALIGNMENT RULE
# ============================================================

alignment_rule:
The following must use these exact values:
- API request and response payloads
- DB stored status columns
- runtime state handling
- flow documentation
- validation logic
- monitoring and audit interpretation

# ============================================================
# 25. OFFICIAL SUMMARY
# ============================================================

This file fixes the exact enum values
for Business AI Worker.

No alternative spellings,
case variants,
or synonym values
should be introduced in implementation.
