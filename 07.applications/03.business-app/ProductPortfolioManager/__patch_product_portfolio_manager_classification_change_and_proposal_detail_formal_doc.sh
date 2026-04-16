#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/020.architecture" \
  "$BASE/050.flow" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/020.architecture/0200014_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION CHANGE AND PROPOSAL DETAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of classification-change
and proposal-detail surfaces inside ProductPortfolioManager.

architecture_principles:
- classification change is a governed strategy-change surface
- proposal detail is a governed action-candidate surface
- both surfaces must preserve before/after meaning where relevant
- both surfaces must support draft, review, approval, and history awareness
- both surfaces must distinguish judgment state from execution truth
- device differences may change density, not meaning or authority

# ============================================================
# 1. CLASSIFICATION-CHANGE ARCHITECTURAL ROLE
# ============================================================

classification_change_role:
- show current approved classification
- show proposed classification context
- show supporting score / KPI / lifecycle / alert / proposal context
- support draft creation and update
- support submission and approval handoff where required
- preserve explicit reason capture

classification_change_is_not:
- not a hidden auto-classification tool
- not an ERP category editing surface
- not a silent finalization shortcut

classification_change_core_sections:
- product identity section
- current classification section
- proposed classification section
- reason section
- support-context section
- approval requirement section
- history entry section

# ============================================================
# 2. PROPOSAL-DETAIL ARCHITECTURAL ROLE
# ============================================================

proposal_detail_role:
- show proposal meaning and status
- show related product and judgment context
- show expected effect, risk, owner, and due date
- support proposal editing while state permits
- support approval linkage and history visibility
- support outcome interpretation

proposal_detail_is_not:
- not merely a long note page
- not a hidden execution engine
- not proof that ERP-side action has already occurred

proposal_detail_core_sections:
- proposal identity section
- proposal type and meaning section
- related product section
- effect/risk section
- owner and due-date section
- status and approval section
- history section
- linked review / alert context section

# ============================================================
# 3. SURFACE RELATION
# ============================================================

surface_relation:
classification_change:
- strategy-position change surface

proposal_detail:
- action-candidate meaning surface

architectural_rule:
A classification change and a proposal may be related,
but must remain separate governed meanings.

# ============================================================
# 4. SOURCE / STATE VISIBILITY ARCHITECTURE
# ============================================================

source_state_visibility_architecture:
- current approved classification must be clearly distinguishable from draft classification
- proposal status must be clearly distinguishable from approval status
- approved proposal must be distinguishable from completed proposal
- score context must be distinguishable from classification/proposal decisions
- ERP truth must remain distinct from application judgment records

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- sequential editing and review emphasis
- condensed support context with drill-down

tablet:
- stronger side-by-side support context
- easier switching across judgment sections

pc:
- denser contextual visibility
- easier before/after and history inspection

cross_device_rule:
No device class may hide the distinction between
current approved state,
draft state,
approval state,
and outcome state.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Classification-change and proposal-detail architecture
in ProductPortfolioManager
must support governed strategy/action judgment
with explicit state meaning and clear context.
EOF

cat <<'EOF' > "$BASE/050.flow/0500012_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_FORMAL_FLOW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION CHANGE AND PROPOSAL DETAIL FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across
classification-change and proposal-detail surfaces.

flow_principles:
- classification change must preserve current-vs-proposed clarity
- proposal detail must preserve draft/review/approval/outcome clarity
- both flows must support explicit next actions
- both flows must preserve history visibility

# ============================================================
# 1. CLASSIFICATION-CHANGE FLOW
# ============================================================

classification_change_flow:
1. open classification-change surface from product detail, score detail, comparison, review, or alert context
2. inspect current approved classification
3. inspect supporting score/KPI/lifecycle/alert/proposal context
4. choose proposed classification
5. enter reason
6. save as draft or submit
7. if approval required, create approval handoff
8. if approval not required by policy, finalize through allowed route
9. preserve resulting history

inputs:
- portfolio_item_id
- current approved classification context
- proposed_classification_code
- proposed_reason
- based_score_id where relevant

outputs:
- product_classification_draft
- optional approval request
- finalized product_classification where permitted

# ============================================================
# 2. PROPOSAL-DETAIL FLOW
# ============================================================

proposal_detail_flow:
1. open proposal-detail surface from list, product detail, alert, review, or history context
2. inspect proposal type, title, and current status
3. inspect linked product and judgment context
4. inspect expected effect, risk, owner, due date
5. if state permits, edit proposal
6. submit / move to review / connect to approval flow where required
7. inspect approval and history context
8. move to in_progress or completed where lifecycle meaning permits

inputs:
- proposal_id
- related product context
- proposal status context
- approval context where available

outputs:
- updated proposal state
- optional approval request linkage
- clearer next-action path

# ============================================================
# 3. CONTEXT PRESERVATION RULES
# ============================================================

context_preservation_rules:
- classification-change flow should preserve product identity and score context where practical
- proposal-detail flow should preserve proposal identity and related product context where practical
- return navigation should preserve originating context where practical
- history transitions should remain interpretable after edits or submission

# ============================================================
# 4. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- classification draft exists but approved classification changed meanwhile
- proposal became rejected while user was viewing it
- approval requirement discovered late
- stale supporting score context
- mixed-currency context affects proposal interpretation

exception_rules:
- stale or conflicting state should remain visible when important
- conflicting judgment state should not be silently overwritten
- missing support context should not be disguised as positive confirmation

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Classification-change and proposal-detail flow
in ProductPortfolioManager
must preserve explicit governed transitions,
support-context visibility,
and stable interpretation of current, draft, and approved states.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200017_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION CHANGE AND PROPOSAL DETAIL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for
classification-change and proposal-detail surfaces
without entering implementation code.

# ============================================================
# 1. CLASSIFICATION-CHANGE REQUIREMENTS
# ============================================================

classification_change_requirements:
- show product identity context
- show current approved classification
- show proposed classification selection
- show proposed reason input
- show supporting score context
- show lifecycle context
- show alert/proposal context where relevant
- show approval requirement or approval state where relevant
- support save draft
- support submit
- support finalize where policy permits
- support history visibility

required_classification_change_fields_or_equivalent:
- portfolio_item_id
- current_classification_code
- proposed_classification_code
- proposed_reason
- based_score_id where relevant
- draft_status
- approval status where relevant

# ============================================================
# 2. PROPOSAL-DETAIL REQUIREMENTS
# ============================================================

proposal_detail_requirements:
- show proposal type
- show proposal title
- show proposal detail
- show expected effect
- show risk note
- show priority level
- show owner_user_id or owner context
- show due_date
- show proposal_status
- show linked product context
- show approval context where relevant
- show history context
- support edit while allowed
- support submit/review/approval linkage while allowed

required_proposal_detail_fields_or_equivalent:
- proposal_id
- proposal_type_code
- proposal_title
- proposal_detail
- expected_effect
- risk_note
- priority_level
- owner_user_id
- due_date
- proposal_status
- created_at
- updated_at

# ============================================================
# 3. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- explain difference between current approved classification and proposed change
- explain difference between proposal status and approval status
- explain that approved proposal is not automatically completed execution
- explain that classification is strategy meaning, not ERP category meaning
- labels and explanatory text must be localization-ready

# ============================================================
# 4. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize stepwise editing and submission flow
- support condensed support-context sections

tablet:
- support easier switching between support context and editable form

pc:
- support denser support context and clearer before/after visibility
- support deeper simultaneous history/context inspection

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- multi-currency-safe money/context presentation where relevant
- no hidden approval shortcut through edit actions
- no hidden finalization of classification changes
- no implication that completed proposal equals ERP-side truth
- consistent meaning across devices

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement
classification-change and proposal-detail surfaces
as governed judgment surfaces
with explicit state meaning,
supporting context,
and history visibility.
EOF

echo "PATCHED: classification-change and proposal-detail formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/050.flow" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
