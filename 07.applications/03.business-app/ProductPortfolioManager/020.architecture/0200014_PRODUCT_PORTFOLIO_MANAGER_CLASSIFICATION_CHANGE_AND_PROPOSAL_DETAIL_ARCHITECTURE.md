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
