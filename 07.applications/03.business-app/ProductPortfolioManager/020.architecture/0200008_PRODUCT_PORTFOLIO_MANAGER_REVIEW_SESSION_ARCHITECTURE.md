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
