# ============================================================
# EXTERNAL API SUBMISSION COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: business-os
owner: Boss
prepared_by: Zero

principle:
Business-facing submission must occur through bounded external API communication.

rules:
- client applications must not write directly to ERP databases
- submission must pass through the formal external API boundary
- local draft, transport send, and business acceptance remain distinct
