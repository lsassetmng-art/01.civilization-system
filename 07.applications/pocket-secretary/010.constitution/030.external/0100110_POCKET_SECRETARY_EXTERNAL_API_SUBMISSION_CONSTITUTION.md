# ============================================================
# POCKET SECRETARY EXTERNAL API SUBMISSION CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary must not write directly to ERP databases.

rules:
- ERP-facing submission must be performed
  through bounded external API communication only
- direct database write from PocketSecretary is prohibited
- local draft, API submission, and business acceptance
  must remain distinct states

prohibitions:
- direct ERP table mutation from PocketSecretary
- hidden bypass of ERP external API boundary
