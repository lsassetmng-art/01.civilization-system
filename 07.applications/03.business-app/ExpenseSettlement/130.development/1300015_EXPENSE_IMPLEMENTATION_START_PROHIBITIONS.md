# ============================================================
# EXPENSE IMPLEMENTATION START PROHIBITIONS
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines what should be prohibited when implementation-start work begins.

prohibited_at_start:
- broad scope expansion beyond slice_01_foundation_flow
- collapsing approval / finance / ERP / settlement meanings
- bypassing audit-visible major actions
- bypassing authority boundaries
- treating templates or candidates as business truth
- treating file attachment as accepted evidence automatically
- assuming implementation-readiness means implementation completion
- reopening ERP source-of-truth boundary
- reopening multilingual / multi currency / all-device requirement

prohibition_rule:
If a proposed implementation change weakens canonical meaning,
it should be rejected or treated as a redesign request instead.

