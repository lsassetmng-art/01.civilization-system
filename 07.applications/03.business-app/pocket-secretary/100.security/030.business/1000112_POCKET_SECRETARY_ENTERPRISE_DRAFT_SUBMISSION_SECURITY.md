# ============================================================
# POCKET SECRETARY ENTERPRISE DRAFT SUBMISSION SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific security constraints
for enterprise draft submission.

common reference:
BusinessOS submission common security defines:
- direct database mutation prohibited
- explicit submit path guarded
- accepted/failed/conflicted distinguishable

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- submission requires explicit application button action
- ERP external API boundary must be preserved
- draft completion alone must not trigger submission
