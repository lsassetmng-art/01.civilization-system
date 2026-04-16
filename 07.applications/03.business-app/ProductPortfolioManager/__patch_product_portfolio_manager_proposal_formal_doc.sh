#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/010.constitution" \
  "$BASE/020.architecture" \
  "$BASE/050.flow" \
  "$BASE/080.policy" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/010.constitution/0100004_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_CONSTITUTION.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional meaning of proposals
inside ProductPortfolioManager.

constitutional_principles:
- proposal is an explicit business action candidate
- proposal is different from classification
- proposal is different from approval
- proposal is different from ERP execution truth
- proposal must remain explainable, reviewable, and traceable
- proposal lifecycle must preserve draft and final separation

proposal_meaning:
A proposal expresses a candidate business action
for a product portfolio target.

proposal_examples:
- increase_price
- decrease_price
- strengthen_promotion
- revise_channel
- reduce_inventory
- revise_sourcing
- maintain
- shrink
- retire

proposal_is_not:
- not the same as product lifecycle
- not the same as product classification
- not an automatic final decision
- not direct proof that ERP-side execution happened

formal_conclusion:
ProductPortfolioManager must treat proposals
as governed action candidates,
not as silent automation outputs or hidden execution commands.
EOF

cat <<'EOF' > "$BASE/020.architecture/0200009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of product action proposals
inside ProductPortfolioManager.

architecture_principles:
- proposal architecture must support creation, review, approval, and status traceability
- proposal must remain connected to product context, KPI context, and review context
- proposal architecture must preserve business meaning across devices
- proposal status must remain distinct from approval status
- proposal architecture must support comparison and prioritization

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

proposal_role:
- capture action ideas tied to products
- support prioritization of actions
- support review-session comparison
- support approval handoff where required
- support execution-oriented state progression after adoption
- preserve proposal history

proposal_is_not:
- not merely a comment
- not merely an alert
- not a hidden implementation command
- not the same as classification change itself

# ============================================================
# 2. PROPOSAL TYPES
# ============================================================

official_proposal_types:
- increase_price
- decrease_price
- strengthen_promotion
- revise_channel
- reduce_inventory
- revise_sourcing
- maintain
- shrink
- retire

architecture_rule:
Proposal type should remain explicit and machine-readable.
Freeform proposal text may exist,
but typed meaning is required for workflow clarity.

# ============================================================
# 3. PROPOSAL STATE ARCHITECTURE
# ============================================================

official_proposal_states:
- draft
- submitted
- in_review
- approved
- rejected
- in_progress
- completed

state_meanings:
draft:
  editable working state
submitted:
  formally entered for review
in_review:
  actively under evaluation
approved:
  adopted at proposal-governance level
rejected:
  not adopted
in_progress:
  accepted and being worked on
completed:
  proposal lifecycle outcome reached

architecture_rule:
Proposal state and approval request state
must not be collapsed into a single concept.

# ============================================================
# 4. PROPOSAL CONTEXT ARCHITECTURE
# ============================================================

proposal_context_requirements:
- linked product context
- linked KPI and score context where relevant
- linked classification context where relevant
- linked alert context where relevant
- linked review-session context where relevant
- expected effect and risk note support
- owner and due-date support

# ============================================================
# 5. SCREEN ARCHITECTURE
# ============================================================

screen_usage:
proposal_list:
- show status
- show type
- show owner
- show due date
- support filtering and prioritization

proposal_detail:
- show proposal meaning
- show related product context
- show expected effect and risk
- show history and approval context

review_session:
- compare proposals across products
- record proposal adoption/rejection decisions

cross_device_rule:
Phone, tablet, and pc may vary in density,
but proposal meaning, states, and authority must remain equivalent.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Proposal architecture in ProductPortfolioManager
must support typed action candidates,
stateful governance,
comparison,
and traceable progression from idea to outcome.
EOF

cat <<'EOF' > "$BASE/050.flow/0500009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_FORMAL_FLOW.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800010_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_POLICY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for proposal meaning,
proposal interpretation,
and proposal governance.

policy_principles:
- proposal is a candidate action, not automatic fact
- proposal status and approval status must remain interpretable
- proposal meaning must remain explainable
- proposal history should remain visible enough for accountability

# ============================================================
# 1. PROPOSAL INTERPRETATION POLICY
# ============================================================

proposal_interpretation_policy:
- draft proposal is work-in-progress meaning
- submitted proposal is not automatically approved
- approved proposal is not automatically equivalent to completed business execution
- rejected proposal remains meaningful historical context
- completed proposal expresses completed proposal lifecycle outcome, not necessarily full enterprise settlement truth

# ============================================================
# 2. APPROVAL POLICY LINK
# ============================================================

approval_policy_link:
- some proposal types may require approval
- some low-impact proposals may be finalized under bounded policy without separate approval
- approval necessity should remain explicit

# ============================================================
# 3. REWORK POLICY
# ============================================================

rework_policy:
- rejected or sent-back proposals should not vanish
- reworked proposals should preserve relation to earlier judgment history where useful
- policy should discourage silent overwrite of rejected meaning

# ============================================================
# 4. PRIORITY POLICY
# ============================================================

priority_policy:
- priority expresses urgency or importance, not automatic right to bypass governance
- critical priority does not remove approval requirements
- priority should remain visible in review and queue surfaces

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Proposal policy in ProductPortfolioManager
must preserve explicit meaning,
governed progression,
and clear separation from approval and execution truth.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200012_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for proposal handling
without entering implementation code.

# ============================================================
# 1. REQUIRED PROPOSAL CAPABILITIES
# ============================================================

required_proposal_capabilities:
- create proposal
- edit proposal while state permits
- save proposal draft
- submit proposal
- move proposal into review context
- show proposal history
- show proposal owner and due date
- show proposal priority
- connect proposal to approval workflow where required

# ============================================================
# 2. REQUIRED PROPOSAL DISPLAY CAPABILITIES
# ============================================================

required_proposal_display_capabilities:
- show proposal type
- show proposal title and detail
- show expected effect
- show risk note
- show status
- show linked product context
- show related classification context where relevant
- show related KPI/score context where relevant

# ============================================================
# 3. REQUIRED PROPOSAL HISTORY CAPABILITIES
# ============================================================

required_proposal_history_capabilities:
- show status transitions
- show actor and time where available
- show rejection or send-back outcomes
- preserve historical visibility of prior proposal states

# ============================================================
# 4. REQUIRED FILTERING CAPABILITIES
# ============================================================

required_filtering_capabilities:
- filter by proposal_status
- filter by proposal_type_code
- filter by priority_level
- filter by owner_user_id
- filter by due_date context
- filter by related product context

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels for proposal type and status
- cross-device consistent meaning
- no hidden proposal approval by UI shortcut
- no collapse of proposal and approval state concepts
- no implication that completed means ERP truth was updated

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement proposals
as typed, stateful, traceable business action candidates
with clear context and governance linkage.
EOF

echo "PATCHED: proposal formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/010.constitution" -maxdepth 1 -type f | sort
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/050.flow" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
