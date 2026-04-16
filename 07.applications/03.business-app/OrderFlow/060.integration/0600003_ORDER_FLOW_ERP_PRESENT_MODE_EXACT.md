# ============================================================
# ORDER FLOW ERP PRESENT MODE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines OrderFlow behavior when ERP is present and connected.

# ============================================================
# 1. core stance
# ============================================================

core_stance:
  - OrderFlow remains the execution and coordination front
  - ERP may act as source of truth for selected domains
  - responsibility does not move away from OrderFlow user experience

# ============================================================
# 2. likely ERP-connected domains
# ============================================================

erp_connected_domains:
  - order synchronization
  - inventory reference
  - shipment request downstream linkage
  - delivery confirmation downstream synchronization
  - customer/master validation where available

# ============================================================
# 3. order behavior
# ============================================================

order_behavior:
  - OrderFlow may create local execution record first
  - ERP-facing sync state may exist per relevant record
  - ERP identifier may be attached after successful sync
  - OrderFlow order_id remains local identity anchor for app responsibility

# ============================================================
# 4. inventory behavior
# ============================================================

inventory_behavior:
  - inventory source type may be erp
  - freshness and retrieval timing must still be visible
  - ERP reference does not remove need for stale/fresh distinction

# ============================================================
# 5. shipment behavior
# ============================================================

shipment_behavior:
  - shipment request may be sent to ERP-linked downstream execution target
  - response acceptance/rejection may come from ERP-connected flow
  - OrderFlow still keeps request-level visibility

# ============================================================
# 6. delivery behavior
# ============================================================

delivery_behavior:
  - delivery confirmation may be entered in OrderFlow
  - downstream ERP sync may happen after local confirmation
  - local operational completion and ERP sync completion are related but distinct

# ============================================================
# 7. failure handling stance
# ============================================================

failure_handling_stance:
  - ERP unavailability must not erase local operator visibility
  - pending / failed / retry-needed visibility may remain at OrderFlow side
  - operator should understand whether failure is business-side or sync-side

# ============================================================
# 8. principle summary
# ============================================================

principle_summary:
  With ERP present, OrderFlow coordinates execution while integrating with ERP truth and downstream linkage where appropriate.

