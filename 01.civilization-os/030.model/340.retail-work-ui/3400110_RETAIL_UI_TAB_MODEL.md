# ============================================================
# RETAIL UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: retail-work-ui
component: retail-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Store Overview
- Sales and KPI
- Inventory
- Pricing and Markdown
- Floor Layout
- Procurement
- Promotions
- Checkout and Staffing
- Waste and Loss
- Incidents
- History


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Store Overview must summarize sales, stock, labor, and alerts together
- Inventory must expose floor stock and backroom stock separately
- Pricing and Markdown must always show margin impact
- Procurement must show supplier reliability and delivery risk
- Promotions must show cultural and calendar compatibility where relevant
- Checkout and Staffing must show wait-time versus labor-cost tradeoff
- Waste and Loss must distinguish spoilage, shrinkage, and incident loss
- Incidents must support fast-response actions without hiding downstream cost


# ============================================================
# 3. FINAL RULE
# ============================================================

Retail UI must teach the player
that retail success depends on
stock truth, labor balance, customer flow,
and disciplined reaction to loss.
