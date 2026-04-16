# ============================================================
# PRODUCT PORTFOLIO MANAGER AUDIT AND HISTORY OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling rules for audit trails and history views
inside ProductPortfolioManager.

operations_principles:
- important judgment actions must remain reconstructable
- audit history must support operator understanding, not only record retention
- history visibility must distinguish draft, review, approval, and final states
- audit operations must not silently alter business state
- audit searchability is an operational necessity

# ============================================================
# 1. OPERATIONAL OBJECTIVES
# ============================================================

operational_objectives:
- explain why a product classification changed
- explain why a proposal changed state
- explain who approved or rejected an item
- explain when a review decision was recorded
- explain share-scope changes where relevant
- support post-event investigation without rewriting history

# ============================================================
# 2. AUDITABLE EVENT CATEGORIES
# ============================================================

auditable_event_categories:
- classification events
- proposal lifecycle events
- review session decision events
- approval events
- share scope events
- alert state events where policy requires
- source-boundary-relevant events
- high-impact settings or operational control changes where applicable

# ============================================================
# 3. OPERATIONAL HISTORY VIEWS
# ============================================================

required_history_views:
- per-product history
- per-entity history
- per-approval-request history
- per-review-session history
- per-actor history where policy permits
- per-event-type history

view_requirements:
- before and after context where meaningful
- actor visibility
- event time visibility
- event type visibility
- linked entity navigation where useful

# ============================================================
# 4. OPERATIONAL USE CASES
# ============================================================

operational_use_cases:
- investigate why a product became retire_candidate
- investigate why a proposal was rejected
- inspect delayed approvals
- inspect whether a review decision was later superseded
- inspect whether a share expansion occurred before wider visibility appeared
- inspect whether an alert was dismissed without downstream action

# ============================================================
# 5. HISTORY RETENTION OPERATIONS
# ============================================================

retention_operations:
- approved and rejected decisions should remain historically visible
- superseded states should remain distinguishable from deleted states
- revocation-style closure is preferred over silent disappearance for high-value records
- operational cleanup must not destroy required auditability

# ============================================================
# 6. CORRECTION OPERATIONS
# ============================================================

correction_operations:
- incorrect business state should normally be corrected by new compensating events
- history should not be rewritten casually
- clearly invalid records may need exceptional handling under policy, but trace of that handling should remain

# ============================================================
# 7. SEARCH AND FILTER OPERATIONS
# ============================================================

search_and_filter_operations:
- filter by entity_type
- filter by entity_id
- filter by event_type
- filter by actor_user_id
- filter by date range
- filter by approval status where relevant
- filter by product or review session context

# ============================================================
# 8. OPERATIONAL METRICS
# ============================================================

operational_metrics:
- approval turnaround time
- decision-to-finalization lag
- number of superseded classification drafts
- number of rejected proposals
- audit event volume by category
- number of share-scope changes
- number of alert dismissals requiring review

# ============================================================
# 9. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Audit and history operations in ProductPortfolioManager
must preserve reconstructability,
operator understandability,
and trustworthy traceability of product judgment activity.
