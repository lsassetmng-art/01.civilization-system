
# ============================================================
# ESTIMATE DEEPLINK ENTRY INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Deeplink entry interface behavior:

- do not show redundant login UI when shared session is valid
- show target screen directly after validation
- show contextual source/route hint where useful
- show fallback login only when shared session is invalid or expired

Representative contextual hints:

- Opened from [source_app]
- Customer context applied
- Estimate loaded from link
- Read-only mode



Premium deeplink rule:

- deeplink may skip redundant login UI when shared session is valid
- deeplink must still respect premium entitlement state
- premium-locked target actions must open in locked/view-safe mode when needed



Premium deeplink rule:

- deeplink may skip redundant login UI when shared session is valid
- deeplink must still respect premium entitlement state
- premium-locked target actions must open in locked/view-safe mode when needed



Permission-aware deeplink behavior:

- deeplink context does not grant permission
- readonly deeplink must open in readonly mode
- missing permission must produce safe locked or denied UI

