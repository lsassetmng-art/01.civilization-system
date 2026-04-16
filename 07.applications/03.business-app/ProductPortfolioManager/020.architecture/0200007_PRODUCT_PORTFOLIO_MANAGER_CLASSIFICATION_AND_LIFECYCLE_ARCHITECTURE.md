# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines architectural structure for lifecycle handling
and strategic classification handling.

architecture_principles:
- lifecycle is contextual input
- classification is managed judgment output
- classification architecture must support suggestion, draft, approval, and final history
- lifecycle architecture must support visibility and comparison
- both meanings must remain usable in list, detail, review, and audit surfaces

# ============================================================
# 1. LIFECYCLE ARCHITECTURAL ROLE
# ============================================================

lifecycle_role:
- provide product-phase context
- support comparison across products
- contextualize score interpretation
- contextualize proposal relevance
- support review-session understanding

official_lifecycle_stages:
- unknown
- launch
- growth
- mature
- decline
- retired

# ============================================================
# 2. CLASSIFICATION ARCHITECTURAL ROLE
# ============================================================

classification_role:
- represent product strategy position
- support portfolio balancing
- support review and proposal prioritization
- support ranking and dashboard segmentation
- support audit and history explanation

official_classification_codes:
- focus
- growth
- profit_core
- maintain
- improve
- risk_watch
- retire_candidate
- seasonal
- test

# ============================================================
# 3. CLASSIFICATION LIFECYCLE STATES
# ============================================================

classification_management_states:
- draft
- submitted
- approved
- rejected
- withdrawn
- superseded

architectural_rule:
Management state of a classification draft
is different from business meaning of classification code itself.

# ============================================================
# 4. SCREEN USAGE ARCHITECTURE
# ============================================================

screen_usage:
portfolio_list:
- show lifecycle_stage
- show current_classification_code
- allow filtering by both

product_detail:
- explain lifecycle context
- explain current classification
- show classification history

review_session:
- compare products across lifecycle and classification combinations
- allow decisions based on both contexts

audit_history:
- preserve before/after classification meaning
- preserve lifecycle context where relevant to explanation

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Lifecycle is an input architecture.
Classification is a managed decision architecture.
Both must remain visible, comparable, and historically explainable.
