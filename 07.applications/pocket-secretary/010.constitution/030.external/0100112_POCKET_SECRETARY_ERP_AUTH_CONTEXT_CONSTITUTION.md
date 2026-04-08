# ============================================================
# POCKET SECRETARY ERP AUTH CONTEXT CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
ERP-facing submission requires valid ERP external API authentication context.

acceptable forms may include:
- valid ERP API token
- other bounded ERP API authentication context
  accepted by the ERP external API

rules:
- missing, invalid, or expired authentication context
  must block submission
- unknown auth state must fail closed
- authentication success does not equal business acceptance
