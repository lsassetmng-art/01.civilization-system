# ============================================================
# PRODUCT PORTFOLIO MANAGER PRODUCT DETAIL AND SCORE DETAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of product detail and score detail surfaces
inside ProductPortfolioManager.

architecture_principles:
- product detail is the primary single-product judgment surface
- score detail is the primary explainability surface for evaluation outputs
- facts, snapshots, scores, classification, proposals, alerts, and forecast references must remain distinguishable
- product detail must support navigation into proposal, classification, review, approval, and history flows
- score detail must support explainability without masquerading as ERP truth
- device differences may change density, not meaning

# ============================================================
# 1. PRODUCT DETAIL ARCHITECTURAL ROLE
# ============================================================

product_detail_role:
- unify one product's operational and judgment context
- provide decision-ready visibility for a single product
- connect product facts, evaluations, classifications, proposals, alerts, and history
- serve as the main launch point for next actions on that product

product_detail_is_not:
- not merely a static profile page
- not a substitute for portfolio-wide comparison
- not a hidden approval or mutation shortcut

product_detail_core_sections:
- product identity section
- metric snapshot summary section
- KPI trend context section
- current score summary section
- lifecycle and classification section
- proposal summary section
- alert summary section
- forecast reference section
- comment/note section
- history / audit entry points
- source context section

# ============================================================
# 2. SCORE DETAIL ARCHITECTURAL ROLE
# ============================================================

score_detail_role:
- explain the evaluated meaning of scores
- show score component structure
- show version, period, and calculation timing
- support comparison of evaluation logic at the product level
- support review and classification reasoning

score_detail_is_not:
- not a replacement for KPI source detail
- not a hidden scoring configuration console
- not formal ERP accounting truth

score_detail_core_sections:
- score header section
- component score section
- score rationale summary section
- version and timing section
- period and currency context section
- classification suggestion context where supported
- related KPI basis entry points

# ============================================================
# 3. DETAIL SURFACE RELATION
# ============================================================

surface_relation:
product_detail:
- broad single-product judgment context

score_detail:
- narrow deep explanation context for evaluation outputs

architectural_rule:
Users should be able to move from product detail to score detail
without losing product identity, period context, or currency context.

# ============================================================
# 4. SOURCE VISIBILITY ARCHITECTURE
# ============================================================

source_visibility_architecture:
- ERP-derived facts must be visibly distinguishable
- product_metric_snapshot must be identifiable as snapshot/reference context
- product_score must be identifiable as application evaluation output
- forecast context must be identifiable as advisory reference
- classification must be identifiable as governed strategy meaning

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- stacked sections
- condensed summary first
- drill-in emphasis

tablet:
- stronger section pairing
- quicker cross-section scanning

pc:
- broader simultaneous section visibility
- denser score explanation and history visibility

cross_device_rule:
No device class may conceal the business meaning
of facts, scores, lifecycle, classification, or source boundaries.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Product detail and score detail architecture in ProductPortfolioManager
must support single-product judgment,
evaluation explainability,
and explicit source-boundary visibility.
