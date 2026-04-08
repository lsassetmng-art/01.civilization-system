# ============================================================
# PRODUCT PORTFOLIO MANAGER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

core_modules:
1. portfolio catalog
2. portfolio scoring
3. strategic classification
4. product issue tracking
5. action proposal management
6. review meeting support
7. sharing and approval control
8. integration reference services

module_contracts:
portfolio_catalog:
- lists portfolio items
- exposes product-centered navigation
- links ERP identity to local portfolio views

portfolio_scoring:
- computes or stores strategic scoring views
- preserves score versioning
- references calculation sources

strategic_classification:
- holds product strategy states
- preserves history
- differentiates suggested and approved states

proposal_management:
- stores action ideas
- links proposals to review and approval states
- supports explainable decision making
