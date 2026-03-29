# ============================================================
# VIEW ONLY BOARD BACKLINK MODEL
# ============================================================

status: canonical
layer: model
scope: view-only-market-and-board-services
component: view-only-board-backlink

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BACKLINK TARGETS
# ============================================================

backlink_targets:
- securities_company_service
- bank_service
- real_estate_service
- recruitment_service
- nation_marketplace
- field_map
- tenant_list
- facility_overview


# ============================================================
# 2. RULES
# ============================================================

rules:
- board services may backlink to actionable services
- backlink must preserve nation and facility context when possible
- backlink must not auto-execute transactions
- return path to originating board must remain available


# ============================================================
# 3. FINAL RULE
# ============================================================

Boards may lead users toward action,
but must not become action endpoints themselves.
