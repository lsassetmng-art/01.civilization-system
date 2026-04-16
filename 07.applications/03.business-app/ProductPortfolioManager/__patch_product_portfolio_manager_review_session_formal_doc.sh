#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/020.architecture" \
  "$BASE/050.flow" \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/020.architecture/0200008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of review sessions in ProductPortfolioManager.
Review sessions are the structured forum where
products, scores, classifications, proposals, alerts,
and follow-up actions are compared and discussed.

architecture_principles:
- review session is a governed decision-support surface
- review session is not identical to final approval
- review session must support multi-product comparison
- review session must support attribution and follow-up ownership
- review session must preserve explicit connection to scores, proposals, and alerts
- review session must remain usable on phone, tablet, and pc with equivalent meaning

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

review_session_role:
- gather targets into one governed discussion context
- support ranking and comparison across products
- support discussion, comments, and decision capture
- support assignment of owners and due dates
- create approval handoff when policy requires

review_session_is_not:
- not merely a note collection page
- not an automatic classifier
- not a hidden approval substitute
- not a freeform meeting artifact without structure

# ============================================================
# 2. CORE ARCHITECTURAL COMPONENTS
# ============================================================

core_components:
- review session header
- review target list
- product comparison area
- proposal comparison area
- alert context area
- discussion/comment area
- decision recording area
- follow-up assignment area
- approval handoff area

# ============================================================
# 3. TARGET GATHERING ARCHITECTURE
# ============================================================

target_gathering_architecture:
Review sessions may gather targets from:
- manual selection
- saved filters
- alert-driven selection
- score-driven selection
- proposal-driven selection
- scheduled review scope selection

architectural_rule:
Target gathering criteria must remain explainable.
A review session should not appear to include products arbitrarily.

# ============================================================
# 4. DECISION ARCHITECTURE
# ============================================================

decision_architecture:
Review decisions may include:
- classification_change
- proposal_adopted
- proposal_rejected
- hold
- recheck
- assign_action

decision_architecture_rules:
- review decision must keep before/after context where relevant
- decision note should remain attributable
- follow-up owner and due date should be first-class where needed
- decision may require later approval depending on policy

# ============================================================
# 5. STATE ARCHITECTURE
# ============================================================

review_session_states:
- draft
- scheduled
- in_progress
- completed
- archived

state_rules:
- draft allows preparation
- scheduled indicates organized future execution
- in_progress indicates active discussion and decision capture
- completed indicates session record stabilized
- archived indicates read-oriented retained history

# ============================================================
# 6. SCREEN ARCHITECTURE
# ============================================================

screen_architecture:
phone:
- focus on sequential review of one target at a time
- preserve access to decision capture and comments

tablet:
- strengthen list plus detail comparison
- support meeting-oriented split-view usage

pc:
- strengthen dense comparison
- support broader simultaneous context visibility

cross_device_rule:
Device class may change layout density,
but not review meaning, available decisions, or authority boundaries.

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Review session architecture in ProductPortfolioManager
must support structured comparison,
decision capture,
follow-up ownership,
and explicit separation from final approval.
EOF

cat <<'EOF' > "$BASE/050.flow/0500008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_FORMAL_FLOW.md"
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
EOF

cat <<'EOF' > "$BASE/070.operations/0700004_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_OPERATIONS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the operational discipline for running review sessions.

operations_principles:
- review sessions should happen on a clear cadence or explicit trigger
- review targets should be explainable
- review completion should produce actionable outcomes
- unresolved items should remain visible
- completed sessions should remain historically inspectable

# ============================================================
# 1. RECOMMENDED CADENCE
# ============================================================

recommended_cadence:
- weekly tactical review
- monthly portfolio review
- quarterly strategic portfolio review

# ============================================================
# 2. TARGET SELECTION OPERATIONS
# ============================================================

target_selection_operations:
- use alert-driven inclusion for urgent products
- use score-driven inclusion for performance-based comparison
- use proposal-driven inclusion for decision-heavy items
- allow manual inclusion for management judgment

# ============================================================
# 3. SESSION QUALITY EXPECTATIONS
# ============================================================

session_quality_expectations:
- each reviewed target should have enough visible context
- decisions should be attributable
- due dates and owners should be explicit where action is required
- unresolved or held items should remain visible after the session

# ============================================================
# 4. POST-SESSION OPERATIONS
# ============================================================

post_session_operations:
- monitor approval-requiring outcomes
- monitor assigned actions
- revisit held or recheck items
- preserve session history for future explanation

# ============================================================
# 5. OPERATIONAL METRICS
# ============================================================

operational_metrics:
- number of sessions completed
- average targets per session
- decision count per session
- held/recheck ratio
- approval-handoff count
- average follow-up completion lag
- overdue action count from review decisions

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Review session operations in ProductPortfolioManager
must preserve cadence,
decision quality,
follow-up accountability,
and historical explainability.
EOF

cat <<'EOF' > "$BASE/080.policy/0800009_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_POLICY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for review session interpretation,
decision meaning,
and boundary with approval.

policy_principles:
- review session is a governed business discussion surface
- review decision is not always identical to final approval
- review inclusion should remain explainable
- review records should remain attributable and historically visible

# ============================================================
# 1. REVIEW DECISION POLICY
# ============================================================

review_decision_policy:
- review decisions represent structured business conclusions at review time
- some decisions may be final under policy
- some decisions may require later approval
- held or recheck decisions remain open judgment states

# ============================================================
# 2. APPROVAL BOUNDARY POLICY
# ============================================================

approval_boundary_policy:
- review completion does not imply automatic approval
- approval-requiring decisions must be routed explicitly
- approver authority is separate from review recording authority by default

# ============================================================
# 3. TARGET INCLUSION POLICY
# ============================================================

target_inclusion_policy:
- target inclusion should be explainable from alerts, scores, proposals, filters, or management choice
- silent unexplained inclusion is disfavored
- removal of targets from an active session should remain understandable when important

# ============================================================
# 4. RECORD PRESERVATION POLICY
# ============================================================

record_preservation_policy:
- completed sessions should remain historically visible
- archived sessions remain part of explainability history
- review comments and decisions should not be casually erased

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Review session policy in ProductPortfolioManager
must preserve explicit comparison, bounded decision meaning,
and clear separation from approval authority.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200011_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for review sessions
without entering implementation code.

# ============================================================
# 1. REQUIRED SESSION CAPABILITIES
# ============================================================

required_session_capabilities:
- create review session
- edit review session while allowed
- add review targets
- remove review targets while allowed
- capture comments
- capture review decisions
- assign owner and due date
- complete session
- archive session

# ============================================================
# 2. REQUIRED REVIEW CONTEXT CAPABILITIES
# ============================================================

required_review_context_capabilities:
- show score context
- show proposal context
- show alert context
- show lifecycle and classification context
- show product comparison context

# ============================================================
# 3. REQUIRED DECISION CAPABILITIES
# ============================================================

required_decision_capabilities:
- classification_change
- proposal_adopted
- proposal_rejected
- hold
- recheck
- assign_action

# ============================================================
# 4. REQUIRED HISTORY CAPABILITIES
# ============================================================

required_history_capabilities:
- show session state history
- show decision history
- show target membership history where supported
- navigate from session to related product/proposal/approval context

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready review labels
- cross-device consistent meaning
- no hidden approval through session completion
- no silent loss of target comparison context
- no collapse of review role and approval role by UI shortcut

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement review sessions
as structured comparison and decision surfaces
with explicit follow-up and approval handoff behavior.
EOF

echo "PATCHED: review session formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/050.flow" -maxdepth 1 -type f | sort
echo
find "$BASE/070.operations" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
