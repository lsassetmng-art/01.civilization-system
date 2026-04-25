# ============================================================
# BUSINESS OS TO AIWORKER OS BOUNDARY DECISION
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-20

purpose:
- Fix the canonical boundary between BusinessOS and AiworkerOS.

decision:
- AiworkerOS is the canonical owner of AI worker entity truth.
- BusinessOS is not the canonical owner of AI worker entity truth.
- BusinessOS remains the canonical owner of commercial, contract, billing, order, approval, dispatch-request, and ERP-facing business truth around AI worker utilization.

aiworker_os_canonical_scope:
- aiworker schema
- worker master
- worker role / rank / domain / style
- company ai usage tendency
- user ai usage tendency
- worker growth
- worker capability snapshots
- worker assignment state
- worker lifecycle / repair / rebuild state
- worker restricted / privileged handling state

business_os_canonical_scope:
- aiworker commercial contract
- aiworker plan / pricing
- aiworker order / subscription / entitlement business truth
- aiworker dispatch request
- aiworker work order on business side
- aiworker approval record on business side
- aiworker billing record
- aiworker erp linkage
- business-facing result summary

result:
- BusinessOS to AiworkerOS canonical boundary fixed.
