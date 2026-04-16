# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 READING SEQUENCE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended reading sequence
before Phase 1 implementation starts.

reading_sequence:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
3. 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
4. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
5. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
6. 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
7. 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
8. 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
9. 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

reading_goal:
After this sequence,
the implementer should know:
- what Phase 1 does
- what data contracts are exact
- what API contracts are exact
- what source boundaries must not be broken
- what authority boundaries must not be broken

formal_conclusion:
Do not start implementation from broad summaries alone.
