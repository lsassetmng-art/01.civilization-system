# ============================================================
# PRODUCT PORTFOLIO MANAGER BUSINESS FLOW FORMAL DESIGN
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines the business flows of ProductPortfolioManager.
The application is centered on the judgment loop of
evaluation, classification, proposal, review, approval, and auditability.

design_position:
This application is not centered on simple product browsing.
This application is centered on product judgment operations.

flow_principles:
- ERP facts are referenced, not freely overwritten
- application-side judgment is explicitly owned here
- draft and final states must remain separated
- review and approval must remain separated
- important decisions must remain auditable
- device differences must not change business meaning

# ============================================================
# 1. FLOW LANDSCAPE
# ============================================================

core_flow_landscape:
- FLC-01 product portfolio onboarding flow
- FLC-02 metric reference and evaluation refresh flow
- FLC-03 strategic classification review flow
- FLC-04 product action proposal flow
- FLC-05 review session flow
- FLC-06 approval flow
- FLC-07 alert handling flow
- FLC-08 audit and history reference flow

official_judgment_loop:
- onboarding
- fact reference
- evaluation refresh
- classification review
- proposal
- review
- approval
- audit trail preservation

# ============================================================
# 2. FLC-01 PRODUCT PORTFOLIO ONBOARDING FLOW
# ============================================================

flow_id: FLC-01
flow_name: product portfolio onboarding flow

objective:
Bring an ERP-side product into ProductPortfolioManager
as a portfolio-managed target.

start_conditions:
- the product exists in ERP
- the product should be managed as a portfolio target

main_flow:
1. reference ERP product
2. fetch basic product identity and context
3. create product_portfolio_item
4. assign initial state
5. expose the item to portfolio list views

inputs:
- product_id
- product_code
- product_name
- category context
- brand context
- lifecycle context

outputs:
- product_portfolio_item
- active_flag=true by default
- current_classification_code unset or initialized by policy

flow_rules:
- onboarding is not itself a judgment action
- ERP product ownership must remain external
- onboarding only establishes portfolio management scope

# ============================================================
# 3. FLC-02 METRIC REFERENCE AND EVALUATION REFRESH FLOW
# ============================================================

flow_id: FLC-02
flow_name: metric reference and evaluation refresh flow

objective:
Refresh the judgment basis of a product
through metric snapshots and score generation.

start_conditions:
- manual refresh
- scheduled refresh
- pre-review refresh
- product-detail-triggered refresh

main_flow:
1. determine target period
2. fetch product facts from ERP or approved reference source
3. create product_metric_snapshot
4. resolve score_version
5. calculate or hydrate product_score
6. optionally derive classification suggestion
7. expose refreshed state to detail and list views

inputs:
- portfolio_item_id
- period_type
- period_start
- period_end
- reporting_currency_code
- score_version

outputs:
- product_metric_snapshot
- product_score
- optional classification suggestion

failure_rules:
- failed refresh must not create fabricated scores
- last valid score may remain visible only if marked as prior state
- source_generated_at and fetched_at must remain visible when available

flow_rules:
- score is a judgment support value, not a formal ERP fact
- monetary context must remain explicit
- refresh timing must remain attributable

# ============================================================
# 4. FLC-03 STRATEGIC CLASSIFICATION REVIEW FLOW
# ============================================================

flow_id: FLC-03
flow_name: strategic classification review flow

objective:
Review and change the strategic classification of a product
such as focus, growth, improve, or retire_candidate.

start_conditions:
- score refresh completed
- pre-review preparation
- alert-driven reassessment
- explicit management action

main_flow:
1. inspect current classification
2. inspect score, metrics, forecast, and issue context
3. select candidate classification
4. create or update product_classification_draft
5. attach reason
6. save as draft or submit for approval
7. finalize approved classification where applicable

inputs:
- portfolio_item_id
- proposed_classification_code
- proposed_reason
- based_score_id

outputs:
- product_classification_draft
- optional product_approval_request
- product_classification when finalized
- updated current_classification_code pointer

branches:
approval_not_required:
- draft may finalize directly according to policy

approval_required:
- create approval request
- remain pending until decision
- finalize only after approval

flow_rules:
- draft and approved classification must not be merged
- before/after classification visibility is mandatory
- classification is a strategy label, not an ERP category

# ============================================================
# 5. FLC-04 PRODUCT ACTION PROPOSAL FLOW
# ============================================================

flow_id: FLC-04
flow_name: product action proposal flow

objective:
Create, review, and track concrete actions for a product.

start_conditions:
- problem discovery
- opportunity discovery
- pre-review preparation
- review-time discussion
- alert-triggered action need

main_flow:
1. identify target product
2. choose proposal type
3. input proposal detail
4. attach expected effect and risk note
5. save draft
6. submit proposal
7. review proposal
8. approve or reject where required
9. move to execution-oriented state if adopted

inputs:
- proposal_type_code
- proposal_title
- proposal_detail
- expected_effect
- risk_note
- priority_level
- due_date
- owner_user_id

outputs:
- product_action_proposal
- product_action_proposal_history
- optional product_approval_request

official_states:
- draft
- submitted
- in_review
- approved
- rejected
- in_progress
- completed

flow_rules:
- classification expresses positioning
- proposal expresses action
- proposal lifecycle must remain historically traceable

# ============================================================
# 6. FLC-05 REVIEW SESSION FLOW
# ============================================================

flow_id: FLC-05
flow_name: review session flow

objective:
Compare multiple products and proposals
and record strategic management decisions.

start_conditions:
- scheduled periodic review
- increase in problem products
- strategy reset timing
- forecast volatility
- explicit management initiation

main_flow:
1. create product_review_session
2. set target period and scope
3. collect target products
4. create product_review_session_item rows
5. compare scores, proposals, alerts, and forecast references
6. record discussion comments
7. capture review decisions
8. assign owners and due dates where necessary
9. create approval requests for approval-requiring outcomes
10. complete session

inputs:
- review_title
- target_period
- target_scope_description
- target products
- comments
- decisions

outputs:
- product_review_session
- product_review_session_item
- product_review_decision
- optional product_approval_request

decision_examples:
- classification_change
- proposal_adopted
- proposal_rejected
- hold
- recheck
- assign_action

flow_rules:
- review is a decision-making forum
- review is not always the same as final approval
- comparison visibility is a first-class requirement

# ============================================================
# 7. FLC-06 APPROVAL FLOW
# ============================================================

flow_id: FLC-06
flow_name: approval flow

objective:
Finalize important classification changes,
proposals, and review outcomes through explicit approval.

start_conditions:
- submitted classification change
- submitted proposal requiring approval
- review decision requiring approval

main_flow:
1. create product_approval_request
2. place target into pending queue
3. approver reviews target context
4. approver chooses approved / rejected / sent_back / on_hold
5. persist product_approval_decision
6. reflect resulting state in target entity
7. record audit event

inputs:
- request_type
- target_entity_type
- target_entity_id
- decision_status
- decision_comment

outputs:
- product_approval_request
- product_approval_decision
- target entity state update
- product_audit_event

approval_impact_examples:
classification_approval:
- classification draft becomes formal classification

proposal_approval:
- proposal enters approved state

review_decision_approval:
- review decision becomes formally actionable

flow_rules:
- closed approval requests must not be re-decided
- important approval outcomes should remain attributable
- approval and execution are not the same thing

# ============================================================
# 8. FLC-07 ALERT HANDLING FLOW
# ============================================================

flow_id: FLC-07
flow_name: alert handling flow

objective:
Detect and surface attention-worthy product situations
and connect them to action flows.

start_conditions:
- sales_drop
- margin_drop
- growth_slowdown
- inventory_risk
- forecast_gap
- review_overdue
- proposal_overdue

main_flow:
1. detect condition
2. create product_alert
3. expose alert in list and product detail
4. inspect target product
5. choose next action:
   - classification review
   - proposal creation
   - review session inclusion
6. update alert state to acknowledged / resolved / dismissed when appropriate

outputs:
- product_alert
- downstream linkage to classification, proposal, or review flows

flow_rules:
- alert is not itself a decision
- alert is an entry point to judgment activity
- severity and ownership should remain visible

# ============================================================
# 9. FLC-08 AUDIT AND HISTORY REFERENCE FLOW
# ============================================================

flow_id: FLC-08
flow_name: audit and history reference flow

objective:
Allow users with appropriate authority
to trace important product judgment history.

covered_targets:
- classification changes
- proposal status transitions
- approval outcomes
- review decisions
- sharing changes
- source-boundary-relevant events

main_flow:
1. select entity or product
2. filter by event type and time range
3. inspect before/after context
4. inspect actor and event time
5. navigate to related entity details where necessary

outputs:
- product_audit_event visibility
- linked entity traceability

flow_rules:
- important judgment operations must remain reconstructable
- audit views must distinguish facts from judgments
- audit views must distinguish draft history from approved history

# ============================================================
# 10. FLOW CONNECTIONS
# ============================================================

flow_connections:
- evaluation refresh supports classification review
- classification review may trigger approval
- alerts may trigger classification review, proposal, or review session inclusion
- proposals may be compared during review sessions
- review sessions may create approval requests
- approval outcomes may finalize classification or proposal status
- all important final outcomes should be traceable through audit history

# ============================================================
# 11. ROLE-ORIENTED FLOW PARTICIPATION
# ============================================================

viewer:
- inspect dashboard
- inspect portfolio list
- inspect detail
- inspect history where allowed

editor:
- create comments
- create proposal drafts
- create classification drafts

manager:
- organize review sessions
- choose review targets
- record decisions
- submit approval requests

approver:
- inspect pending requests
- approve
- reject
- send_back
- hold

# ============================================================
# 12. NON-NEGOTIABLE BUSINESS PRINCIPLES
# ============================================================

non_negotiable_principles:
- do not mix facts and judgments
- do not mix draft and final states
- do not mix review and approval
- do not treat alerts as conclusions
- do not treat forecast as formal truth
- do not erase important decision history

# ============================================================
# 13. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The true center of ProductPortfolioManager is not product registration.
The true center is product judgment operations.

official_core_loop:
onboarding
-> fact reference
-> evaluation refresh
-> classification review
-> proposal
-> review
-> approval
-> audit preservation
