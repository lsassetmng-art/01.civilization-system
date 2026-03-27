# ============================================================
# RETAIL WASTE LOSS AND INCIDENT MODEL
# ============================================================

status: canonical
layer: model
scope: retail-work-ui
component: retail-waste-loss-and-incident

owner: Boss
prepared_by: Zero


# ============================================================
# 1. WASTE TYPES
# ============================================================

waste_types:
- spoilage
- expiry_loss
- damage_loss
- markdown_clearance_loss
- display_loss
- handling_loss


# ============================================================
# 2. LOSS TYPES
# ============================================================

loss_types:
- theft
- cashier_error
- stock_record_gap
- supplier_short_delivery
- internal_shrinkage
- customer_fraud


# ============================================================
# 3. INCIDENT TYPES
# ============================================================

incident_types:
- sudden_stockout
- spoilage_spike
- checkout_failure
- promotion_misfire
- supplier_delay
- staff_shortage
- theft_spike
- refrigeration_failure
- local_panic_buying
- political_or_riot_disruption


# ============================================================
# 4. RESPONSE ACTIONS
# ============================================================

response_actions:
- emergency_discount
- isolate_damaged_stock
- call_maintenance
- increase_security_presence
- emergency_recount
- temporary_purchase_limit
- emergency_supplier_switch
- staff_reassignment
- checkout_fallback_mode
- incident_report_submission


# ============================================================
# 5. FINAL RULE
# ============================================================

Retail incident handling must expose
how small losses accumulate,
how store trust is damaged,
and how response speed protects margin and reputation.
