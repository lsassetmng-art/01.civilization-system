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
