# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines the proposal lifecycle flow
from creation through outcome.

flow_principles:
- proposal creation must remain explicit
- proposal review must remain visible
- approval and proposal state progression must remain distinguishable
- history must preserve meaningful state changes

# ============================================================
# 1. CREATION FLOW
# ============================================================

creation_flow:
1. identify target product
2. choose proposal type
3. input title and detail
4. input expected effect and risk note
5. assign owner and due date where applicable
6. save as draft or submit

inputs:
- portfolio_item_id
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
- initial proposal status

# ============================================================
# 2. REVIEW FLOW
# ============================================================

review_flow:
1. inspect submitted proposal
2. compare with KPI, classification, and alert context
3. discuss proposal in detail or review session
4. move to in_review where active evaluation is underway
5. determine whether approval is required

outputs:
- updated proposal status
- possible review-session linkage
- optional approval-request candidate

# ============================================================
# 3. APPROVAL FLOW CONNECTION
# ============================================================

approval_connection_flow:
1. identify proposal requiring approval
2. create approval request
3. approver decides approved / rejected / sent_back / on_hold
4. reflect result into proposal lifecycle meaning where policy defines it

rule:
Approval decision is not the same record as proposal state,
even when it influences proposal state.

# ============================================================
# 4. EXECUTION-ORIENTED FLOW
# ============================================================

execution_oriented_flow:
1. proposal becomes approved
2. business operation begins work
3. proposal moves to in_progress when execution tracking starts
4. proposal moves to completed when proposal outcome is considered reached

rule:
Completed proposal does not automatically prove all downstream ERP-side execution occurred,
unless explicitly supported by separate evidence and policy.

# ============================================================
# 5. REJECTION AND REWORK FLOW
# ============================================================

rejection_and_rework_flow:
1. proposal is rejected or sent back
2. proposal remains historically visible
3. operator may copy or revise into a new or reworked proposal according to policy
4. history must preserve prior outcome

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The proposal flow in ProductPortfolioManager
must preserve explicit action-candidate lifecycle,
review visibility,
approval linkage,
and outcome traceability.
