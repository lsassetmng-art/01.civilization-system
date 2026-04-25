# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for ProductPortfolioManager
Phase A stub generation.

content_order_strategy:
- start from dependency-light files
- lock contracts first
- write ports before adapters
- write tests after service boundaries are clear

first_slice_recommended_start:
- ErrorResponse
- PortfolioCockpitQueryRequest
- PortfolioCockpitQueryResponse
- PortfolioCockpitQueryValidator
- PortfolioControlTimelineItem
- PortfolioControlTimelineRepository
- PortfolioCockpitQueryMapper
- PortfolioCockpitQueryService
- PortfolioCockpitQueryController
- JdbcPortfolioControlTimelineRepository
- DatabaseProductPortfolioManagerAuditAdapter
- ProductPortfolioManagerPhaseAConfig
- PortfolioCockpitQueryServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the cockpit query as the narrowest first vertical slice
- delays exception review query until cockpit boundaries are stable
