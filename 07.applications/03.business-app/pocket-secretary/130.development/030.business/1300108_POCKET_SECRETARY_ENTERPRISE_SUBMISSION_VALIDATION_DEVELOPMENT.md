# ============================================================
# POCKET SECRETARY ENTERPRISE SUBMISSION VALIDATION DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

validation targets:
- ERP application draft requires explicit application button
- quotation draft requires explicit application button
- order draft requires explicit application button
- draft completion alone does not trigger submission
- direct ERP database write does not occur
- submission occurs through ERP external API only

rules:
- first-time submission without button press must fail validation
- pending, accepted, failed, and conflicted states must remain distinguishable
