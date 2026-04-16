# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines the review session flow
from preparation through completion and follow-up.

flow_principles:
- review sessions operate on explicit target scope
- review is a comparison and discussion flow
- review decisions must remain attributable
- review completion does not automatically equal final approval

# ============================================================
# 1. PREPARATION FLOW
# ============================================================

preparation_flow:
1. create review session
2. define title and target period
3. define scope description
4. choose target gathering method
5. add review targets
6. verify metrics, scores, proposals, and alerts are available
7. move to scheduled or in_progress state

inputs:
- review_title
- target_period_start
- target_period_end
- target_scope_description
- target product candidates

outputs:
- product_review_session
- product_review_session_item rows

# ============================================================
# 2. ACTIVE REVIEW FLOW
# ============================================================

active_review_flow:
1. open session
2. inspect review target list
3. compare target products
4. inspect proposals and alert context
5. add discussion comments
6. capture decisions per target
7. assign owners and due dates if needed
8. identify which outcomes require approval

inputs:
- comments
- decision_type
- before_classification_code
- after_classification_code
- proposal_action
- assigned_user_id
- due_date
- decision_note

outputs:
- product_review_decision
- updated discussion context
- optional approval-request candidates

# ============================================================
# 3. COMPLETION FLOW
# ============================================================

completion_flow:
1. verify required decisions are recorded
2. verify follow-up assignments where needed
3. create approval requests for approval-requiring decisions
4. mark session completed
5. preserve session history for later reference

outputs:
- completed review_session state
- approval requests where required
- stable historical review record

# ============================================================
# 4. ARCHIVE FLOW
# ============================================================

archive_flow:
1. identify completed session ready for archive
2. move session to archived state
3. preserve read-oriented access and traceability

rule:
Archive does not erase review meaning or decision history.

# ============================================================
# 5. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- target removed before active discussion
- missing score refresh for a target
- proposal changed during active review
- approval requirement discovered late
- session paused and resumed later

exception_rules:
- exceptions should remain visible in operational history when important
- review record should not silently hide material context shifts
- missing data should not be disguised as stable comparison

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The review session flow in ProductPortfolioManager
must support preparation,
structured comparison,
decision capture,
follow-up ownership,
and explicit handoff to approval where required.
