# ============================================================
# ORDER FLOW ERP ABSENT MODE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines OrderFlow behavior when ERP is not present.

# ============================================================
# 1. core stance
# ============================================================

core_stance:
  - OrderFlow must remain usable without ERP
  - business responsibility stays unchanged
  - OrderFlow may become the practical local execution system for this scope

# ============================================================
# 2. locally handled domains
# ============================================================

locally_handled_domains:
  - order canonical record
  - customer snapshot retention
  - inventory reference through lightweight or manual/reference path
  - shipment request tracking
  - delivery confirmation tracking
  - operational closure judgment

# ============================================================
# 3. inventory behavior
# ============================================================

inventory_behavior:
  - inventory source type may be app_local
  - inventory source type may be external_reference
  - inventory source type may be manual_confirmation
  - stale/fresh distinction still matters even without ERP

# ============================================================
# 4. shipment behavior
# ============================================================

shipment_behavior:
  - shipment request may remain lightweight-managed
  - downstream target may be manual, local warehouse, or external non-ERP operation
  - acceptance and rejection visibility still matter

# ============================================================
# 5. delivery behavior
# ============================================================

delivery_behavior:
  - delivery confirmation may be fully app-local
  - partial delivery and remaining scope handling remain mandatory
  - order closure remains explicit

# ============================================================
# 6. design advantage
# ============================================================

design_advantage:
  - teams can adopt OrderFlow before ERP rollout
  - teams can keep using OrderFlow even if ERP is intentionally absent
  - architecture remains compatible with later ERP adoption

# ============================================================
# 7. principle summary
# ============================================================

principle_summary:
  Without ERP, OrderFlow acts as the lightweight but structured execution and delivery coordination front for the supported business scope.

