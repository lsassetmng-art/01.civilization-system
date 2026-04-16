
# ============================================================
# ESTIMATE ENTRY RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

This runtime defines dual-entry behavior.

Standalone:

- may require local login UI
- establishes usable app session
- routes to list/detail/editor according to user action

Deeplink:

- receives launch context
- reuses shared BusinessOS session when valid
- does not require redundant login UI
- validates session and route context before entry

Both entry paths must converge into the same canonical workspace rules.

