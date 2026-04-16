
# ============================================================
# ESTIMATE DELIVERY RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_delivery_record stores customer-facing estimate delivery activity.

Required fields:
- delivery_record_id
- estimate_id
- delivery_channel
- delivery_state
- delivery_locale
- delivery_currency_code
- presented_total_amount
- presented_at
- operator_user_id
- readonly_link_id
- pdf_artifact_id
- email_target
- created_at
- updated_at

Representative delivery_channel values:
- pdf_export
- email
- readonly_link

Representative delivery_state values:
- not_sent
- sent
- delivery_failed
- opened
- expired

