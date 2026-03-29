# ============================================================
# BUSINESS CORE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the official core policy of BusinessOS.

BusinessOS is primarily user-scoped.
Company context exists only as an attached context
for ERP-send-capable app flows.


# ============================================================
# 1. CORE POLICY
# ============================================================

BusinessOS must treat:
- user
- workspace
- app data

as primary truth domains.

BusinessOS must not treat:
- company
- tenant
- enterprise org

as default root truth domains.


# ============================================================
# 2. ERP-SEND POLICY
# ============================================================

Some BusinessOS apps may send real operational data to ERP.

Examples:
- travel expense data
- business card data

When sending to ERP:
- company context must be attached
- ERP payload must become company-scoped
- BusinessOS source truth remains user-scoped


# ============================================================
# 3. FAIL-CLOSED POLICY
# ============================================================

ERP-send must fail closed if:
- company_id is missing
- required mapping is missing
- payload type is invalid
- ERP-send permission is not enabled

Normal BusinessOS user-scoped operation
must remain valid without ERP linkage.


# ============================================================
# 4. FINAL RULE
# ============================================================

BusinessOS is user-scoped by default.

Core summary:

- user/workspace/app data are primary truth
- ERP-send adds company context only when required
- company is not default BusinessOS truth
