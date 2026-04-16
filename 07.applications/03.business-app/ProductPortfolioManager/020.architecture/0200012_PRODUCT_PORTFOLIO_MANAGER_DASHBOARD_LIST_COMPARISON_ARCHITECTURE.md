# ============================================================
# PRODUCT PORTFOLIO MANAGER DASHBOARD LIST COMPARISON ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of dashboard, portfolio list,
and comparison surfaces in ProductPortfolioManager.

architecture_principles:
- these surfaces are judgment surfaces, not mere browsing surfaces
- dashboard must accelerate recognition of priorities
- list must support search, filter, sort, and triage
- comparison must support explainable multi-target judgment
- density may differ by device, but meaning must remain equivalent
- facts, scores, classifications, proposals, alerts, and forecast context must remain distinguishable

# ============================================================
# 1. DASHBOARD ARCHITECTURAL ROLE
# ============================================================

dashboard_role:
- provide overall portfolio health visibility
- surface urgent and important products
- surface action-oriented counts
- link rapidly into list, detail, review, approval, and alert workflows

dashboard_is_not:
- not a full-detail replacement for list or product detail
- not a hidden decision engine
- not a single-screen substitute for review governance

dashboard_core_sections:
- KPI summary section
- strategic segmentation section
- top-ranked products section
- alert summary section
- review/approval workload section
- quick navigation actions

# ============================================================
# 2. PORTFOLIO LIST ARCHITECTURAL ROLE
# ============================================================

portfolio_list_role:
- provide cross-product visibility
- support operational narrowing through search and filters
- support ranking and prioritization
- support multi-select and comparison initiation
- serve as the main triage surface

portfolio_list_core_dimensions:
- identity dimension
- category/brand/lifecycle dimension
- strategy/classification dimension
- KPI dimension
- score dimension
- alert/proposal/review state dimension

# ============================================================
# 3. COMPARISON SURFACE ARCHITECTURAL ROLE
# ============================================================

comparison_role:
- support product-to-product comparison
- support proposal-to-proposal comparison where needed
- support classification reasoning comparison
- support review-oriented discussion

comparison_is_not:
- not merely duplicated list rows
- not a static report
- not a substitute for decision history

comparison_core_dimensions:
- KPI comparison
- score comparison
- lifecycle comparison
- classification comparison
- proposal comparison
- alert/forecast context comparison

# ============================================================
# 4. CROSS-SURFACE RELATION
# ============================================================

cross_surface_relation:
dashboard:
- entry and prioritization surface

portfolio_list:
- exploration and triage surface

comparison:
- deeper judgment surface for multiple targets

architectural_rule:
These surfaces form a continuous judgment path:
dashboard -> list -> detail/comparison -> review/proposal/classification/approval

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- compressed KPI cards
- prioritized columns and expandable details
- comparison with reduced simultaneous density

tablet:
- stronger split-view and side-by-side context
- review-friendly dense comparison

pc:
- highest density list and comparison support
- larger simultaneous context window

cross_device_rule:
No device class may remove the meaning of key states or change authority boundaries.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Dashboard, list, and comparison architecture in ProductPortfolioManager
must support fast recognition,
structured triage,
and explainable multi-target judgment.
