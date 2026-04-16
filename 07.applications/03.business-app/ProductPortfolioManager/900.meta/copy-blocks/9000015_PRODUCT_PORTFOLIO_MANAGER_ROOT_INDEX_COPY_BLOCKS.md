# ============================================================
# PRODUCT PORTFOLIO MANAGER ROOT INDEX COPY BLOCKS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides copy-ready blocks
for wider root/index/integrated/restart documents.

# ============================================================
# 1. SHORT INDEX BLOCK
# ============================================================

short_index_block:
  - application_name: ProductPortfolioManager
    path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    role:
      - product portfolio judgment
      - KPI/scoring-based evaluation
      - strategy classification
      - proposal/review/approval governance
    canonical_entries:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    status:
      - design expanded
      - implementation not started

# ============================================================
# 2. MEDIUM INDEX BLOCK
# ============================================================

medium_index_block:
  - application_name: ProductPortfolioManager
    application_group: 07.applications
    path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    category: business-judgment-application
    summary:
      A lightweight product strategy judgment application
      that sits on top of ERP facts and forecast references
      to manage product portfolio scoring, classification,
      proposals, reviews, approvals, alerts, and audit history.
    primary_capabilities:
      - product portfolio visibility
      - KPI / score-based evaluation
      - strategic classification
      - proposals
      - review sessions
      - approvals
      - alerts
      - audit/history
    canonical_entries:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    current_state:
      - design fixed broadly across constitution through implementation requirements
      - implementation not started
      - cleanup / standardization stage

# ============================================================
# 3. LONG INDEX BLOCK
# ============================================================

long_index_block:
  - application_name: ProductPortfolioManager
    application_group: 07.applications
    path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    category: business-judgment-application
    design_identity:
      ProductPortfolioManager is a lightweight product strategy judgment application.
      It does not replace ERP.
      It consumes ERP facts and forecast references,
      and owns application-side artifacts such as
      metric snapshots for judgment reproducibility,
      scores, classifications, proposals, reviews,
      approvals, alerts, share scope, and audit/history.
    global_requirements:
      - multilingual
      - multi-currency
      - iphone
      - android
      - pc
      - tablet
    core_judgment_loop:
      - onboarding
      - fact reference
      - evaluation refresh
      - classification review
      - proposal
      - review
      - approval
      - audit preservation
    primary_entry_documents:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    deeper_entry_documents:
      - 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
      - 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
      - 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
      - 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
      - 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
      - 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
    current_state:
      - broad design complete
      - cleanup and standardization stage
      - implementation not started

formal_conclusion:
These blocks are copy-ready navigation inserts.
