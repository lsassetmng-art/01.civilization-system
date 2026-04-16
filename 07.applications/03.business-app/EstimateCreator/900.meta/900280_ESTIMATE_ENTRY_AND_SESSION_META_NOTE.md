
# ============================================================
# ESTIMATE ENTRY AND SESSION META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Review focus:

- standalone and deeplink are both first-class entry paths
- deeplink does not require redundant login UI when shared session is valid
- shared session reuse does not bypass authorization checks
- raw credentials are not carried in deeplink business parameters
- invalid shared session falls back safely or fails closed

