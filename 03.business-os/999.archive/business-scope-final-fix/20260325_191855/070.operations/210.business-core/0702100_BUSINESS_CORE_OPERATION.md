# ============================================================
# BUSINESS CORE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical operational procedure
for BusinessOS core handling.

BusinessOS is primarily user-scoped.
Operational checks must therefore be rooted in:
- user basis
- workspace basis
- app basis
- authority basis
- ERP-send context only when explicitly requested

operation_steps:
1 inspect business target and user/workspace/app basis
2 verify authority and app entitlement
3 execute user-scoped business operation
4 if ERP-send is requested, verify ERP-send permission, company context, and mapping basis
5 persist result and audit trace
6 expose retry/failure path where applicable

rules:
- normal BusinessOS operation must not require company scope
- ERP-send is optional and must fail closed when required company context is missing
- tenant-as-company interpretation is invalid for BusinessOS operations

final_rule:
BusinessOS operations are user/workspace-first,
with optional outbound ERP-send company context.
