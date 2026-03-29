# ============================================================
# RETAIL KPI SNAPSHOT MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-kpi-snapshot

owner: Boss
prepared_by: Zero


# ============================================================
# 1. KPIS
# ============================================================

retail_kpis:
- sales_amount
- gross_profit
- profit_margin
- visitor_count
- conversion_rate
- average_basket_size
- stockout_rate
- waste_rate
- labor_efficiency
- reputation_score
- local_supply_ratio
- freshness_score
- store_cleanliness_rate
- store_hygiene_score
- inspection_readiness_score


# ============================================================
# 2. FINAL RULE
# ============================================================

Retail KPI snapshot
must support observation and intervention.
