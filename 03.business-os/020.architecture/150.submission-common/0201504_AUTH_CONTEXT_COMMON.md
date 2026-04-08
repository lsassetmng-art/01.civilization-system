# ============================================================
# AUTH CONTEXT COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: business-os
owner: Boss
prepared_by: Zero

principle:
Submission requires valid external API authentication context.

rules:
- missing auth context blocks submission
- invalid auth context blocks submission
- expired auth context blocks submission
- auth validity and business acceptance remain distinct
