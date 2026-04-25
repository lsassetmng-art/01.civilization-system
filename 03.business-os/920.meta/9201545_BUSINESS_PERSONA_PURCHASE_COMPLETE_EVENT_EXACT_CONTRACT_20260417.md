# ============================================================
# BUSINESS PERSONA PURCHASE COMPLETE EVENT EXACT CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact payload contract for the purchase_complete event.

event_type:
- purchase_complete

required_payload_fields:
- order_id
- order_line_id when applicable
- purchase_status
- purchased_at
- commercial_effective_at
- product_id
- sku_id when applicable
- grant_target_type when applicable
- grant_target_id when applicable
- commercial_right_created: boolean
- currency when monetary context is needed
- total_amount when monetary context is needed

allowed_purchase_status:
- completed

consumer_meaning:
- authoritative Business purchase completed
- downstream PersonaOS may materialize apply-ready state only from this Business truth

downstream_constraints:
- PersonaOS must not reinterpret this event as tentative trade state
- purchase_complete must not be emitted before Business truth is final

result:
- purchase_complete exact contract fixed as a canonical meta record.
