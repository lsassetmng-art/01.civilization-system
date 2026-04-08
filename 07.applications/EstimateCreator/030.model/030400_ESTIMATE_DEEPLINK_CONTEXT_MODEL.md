
# ============================================================
# ESTIMATE DEEPLINK CONTEXT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_deeplink_context stores validated deeplink parameters.

Representative fields:

- deeplink_context_id
- source_app
- source_screen
- deeplink_mode
- estimate_id
- customer_id
- opportunity_id
- draft_id
- readonly
- received_at
- validation_state

Representative validation_state values:

- received
- validated
- invalid
- rejected

Raw credentials must not be stored as deeplink business parameters.

