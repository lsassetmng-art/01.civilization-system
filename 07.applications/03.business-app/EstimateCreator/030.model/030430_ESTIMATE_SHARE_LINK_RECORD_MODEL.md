
# ============================================================
# ESTIMATE SHARE LINK RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_share_link_record stores readonly customer-facing share link state.

Required fields:
- link_id
- estimate_id
- link_state
- readonly
- expires_at
- created_at
- created_by
- latest_opened_at
- first_opened_at
- open_count

Representative link_state values:
- active
- expired
- revoked

