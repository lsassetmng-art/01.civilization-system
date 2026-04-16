# ============================================================
# IMPLEMENTATION HANDOFF NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides direct handoff guidance from design to implementation.

implementation_handoff_summary:
- core authority boundary is fixed
- FRONT_LOCAL and ERP_MASTER distinction is fixed
- screen structure is fixed
- state transitions are fixed
- permission boundaries are fixed
- exact API payloads are fixed
- physical DB guidance is fixed
- implementation phases are fixed

implementation_start_order:
1. phase 01 authority and base model
2. phase 02 front invoice core
3. phase 03 manual payment confirmation
4. phase 04 receipt issuance
5. phase 05 collection management
6. phase 06 bank match flow
7. phase 07 ERP reflection
8. phase 08 refinement

implementation_guardrails:
- do not blur FRONT_LOCAL and ERP_MASTER
- do not allow ERP reflection on non-eligible paths
- do not issue receipt without confirmed payment
- do not hide overdue/priority state in UI
- do not bypass audit for elevated actions
