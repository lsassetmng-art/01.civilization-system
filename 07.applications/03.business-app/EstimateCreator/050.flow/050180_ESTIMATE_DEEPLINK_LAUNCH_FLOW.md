
# ============================================================
# ESTIMATE DEEPLINK LAUNCH FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Deeplink launch flow:

1. receive deeplink
2. read source_app / source_screen / mode / context ids
3. resolve shared BusinessOS session
4. validate session
5. validate deeplink context
6. enter target screen without redundant login UI when valid
7. fallback safely when invalid

Representative deeplink modes:

- create
- edit
- detail
- memo
- meeting
- qa
- template_apply
- inventory_check

