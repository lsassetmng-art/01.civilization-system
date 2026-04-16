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
