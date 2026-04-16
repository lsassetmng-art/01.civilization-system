# ============================================================
# PRODUCT PORTFOLIO MANAGER FINAL HANDOFF BUNDLE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides the final handoff bundle for ProductPortfolioManager
so another chat, another maintainer,
or a wider system index can continue from a stable point.

# ============================================================
# 1. APPLICATION IDENTITY
# ============================================================

application_identity:
ProductPortfolioManager is a lightweight product strategy judgment application.
It sits on top of ERP facts,
uses forecast as advisory reference,
and governs portfolio-scoped artifacts such as
scores, classifications, proposals, reviews, approvals, alerts, share scope, and audit/history.

# ============================================================
# 2. GLOBAL REQUIREMENTS
# ============================================================

global_requirements:
- multilingual support
- multi-currency support
- iphone support
- android support
- pc support
- tablet support

# ============================================================
# 3. CORE JUDGMENT LOOP
# ============================================================

core_judgment_loop:
- onboarding
- fact reference
- evaluation refresh
- classification review
- proposal
- review
- approval
- audit preservation

# ============================================================
# 4. SOURCE-OF-TRUTH BOUNDARY
# ============================================================

source_of_truth_boundary:
erp_owns:
- product master identity
- formal sales truth
- formal cost truth
- formal inventory truth
- formal accounting truth

forecast_side_owns:
- forecast generation logic
- forecast source/model meaning
- forecast confidence production

application_owns:
- product portfolio scope
- metric snapshots for judgment reproducibility
- scoring
- classification
- proposals
- review sessions
- approvals
- alerts
- share scope
- audit/history
- presentation preferences and presets

# ============================================================
# 5. WHAT IS FIXED
# ============================================================

fixed_design_areas:
- application identity
- competitive positioning
- functional requirements
- screen requirements
- data model
- exact payload contracts
- exact table / enum contracts
- ERP boundary
- forecast boundary
- KPI and scoring design
- classification and lifecycle design
- proposal design
- review session design
- authorization design
- alert / notification design
- share-scope design
- audit/history design
- settings / locale / currency / preset design
- freshness-by-surface
- notification recipient matrix
- root navigation refresh
- wide-index reflection notes
- compression-pass notes
- closure note

# ============================================================
# 6. WHAT HAS NOT STARTED
# ============================================================

not_started:
- implementation
- code generation
- DDL execution
- API implementation
- UI implementation
- production integration work

# ============================================================
# 7. RESTART ORDER
# ============================================================

recommended_restart_order:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
3. 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
4. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
5. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
6. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
7. 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
8. 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
9. 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
10. 900.meta/9000019_PRODUCT_PORTFOLIO_MANAGER_DESIGN_CLOSURE_NOTE.md

# ============================================================
# 8. SAFE CONTINUATION WARNINGS
# ============================================================

safe_continuation_warnings:
- do not collapse ERP fact meaning into application judgment meaning
- do not collapse forecast advisory meaning into final decision meaning
- do not collapse lifecycle and classification into one concept
- do not collapse review and approval into one step
- do not treat proposal completion as automatic ERP execution truth
- do not treat settings or presets as authority-changing surfaces

# ============================================================
# 9. CURRENT STAGE
# ============================================================

current_stage:
- design closure reached
- cleanup / standardization optional
- broader navigation reflection optional
- implementation still unopened

# ============================================================
# 10. FINAL CONCLUSION
# ============================================================

final_conclusion:
ProductPortfolioManager is in a stable design-expanded state
and can be safely paused, handed off, or resumed later
without rediscovering core meaning.
