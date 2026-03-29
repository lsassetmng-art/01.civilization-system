# ============================================================
# BUSINESS CORE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the official core flow of BusinessOS.

BusinessOS is primarily user-scoped.
This flow governs user/workspace-scoped app operation
and the optional ERP-send path.


# ============================================================
# 1. PRIMARY FLOW
# ============================================================

Primary flow:

user
-> workspace
-> app selection
-> app data creation/update
-> app-level paid feature where applicable
-> optional ERP-send evaluation
-> ERP-send payload creation where applicable

BusinessOS core flow does not require
company-scope truth for normal local use.


# ============================================================
# 2. ERP-SEND FLOW
# ============================================================

ERP-send flow:

user-scoped app record
-> ERP-send eligibility check
-> company context attachment
-> mapping/profile resolution
-> ERP payload generation
-> ERP submission

Company context is attached only when needed
for ERP submission.


# ============================================================
# 3. REQUIRED CHECKS
# ============================================================

Primary checks:
- user exists
- workspace exists
- app scope is valid
- paid feature entitlement is valid where required

ERP-send checks:
- ERP-send is enabled for the app
- company_id is available
- mapping profile is valid where required
- payload type is valid

No ERP-send may proceed without required company context.


# ============================================================
# 4. FINAL RULE
# ============================================================

BusinessOS core flow is user/workspace-first.

Core summary:

- normal BusinessOS flow is user-scoped
- ERP-send is an optional company-context attachment path
