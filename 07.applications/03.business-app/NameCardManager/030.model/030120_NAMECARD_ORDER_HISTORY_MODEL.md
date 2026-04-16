# ============================================================
# NAMECARD ORDER HISTORY MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_order_history
owner: Boss
prepared_by: Zero

purpose:
Stores order and business history related to the card.

fields:
- order_history_id
- namecard_id
- order_date
- order_type
- order_summary
- amount_note
- project_note
- contact_result_note
- created_at
- updated_at
