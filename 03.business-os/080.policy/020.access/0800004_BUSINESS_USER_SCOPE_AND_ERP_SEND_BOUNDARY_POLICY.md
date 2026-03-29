# ============================================================
# BUSINESS USER SCOPE AND ERP SEND BOUNDARY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the boundary between normal user-scoped BusinessOS truth
and ERP-send company-scoped payload generation.


# ============================================================
# 1. USER SCOPE
# ============================================================

BusinessOS default scope:
- user
- workspace
- app data

This is the normal operating boundary.


# ============================================================
# 2. ERP-SEND COMPANY SCOPE
# ============================================================

When an app sends data to ERP,
the outbound payload must attach company context.

Examples:
- company_id
- employee/user linkage
- payload type
- mapping profile where required

This is an outbound company-scoped integration boundary,
not a change in BusinessOS primary truth holder.


# ============================================================
# 3. FINAL RULE
# ============================================================

BusinessOS is user-scoped.
ERP-send payloads are company-scoped only at send time.
