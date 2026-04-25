# ============================================================
# NAMECARDMANAGER PHASE A EXECUTION ENTRY PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-entry-protocol

purpose:
Defines the exact protocol to follow when the project later moves
from planning artifacts into actual stub generation or SQL execution.

entry_principles:
- do not begin from third slice
- do not generate all files at once without slice order
- do not execute SQL before Sato review
- keep additive only
- keep command packs as the sole sequence authority
- do not reopen already frozen DTO or payload names casually

execution_start_order:
- step_01:
  - execute first slice command pack into a safe output root
- step_02:
  - fill first-slice stub contents according to the first-slice field-filled plan
- step_03:
  - review compile surface and naming consistency
- step_04:
  - execute second slice command pack
- step_05:
  - fill second-slice stub contents according to the second-slice field-filled plan
- step_06:
  - review session-to-image staging seam
- step_07:
  - execute third slice command pack
- step_08:
  - fill third-slice stub contents according to the third-slice field-filled plan
- step_09:
  - review finalize, relationship, and timeline seams
- step_10:
  - only after design-to-code review, prepare SQL apply pack for Sato review
- step_11:
  - only after Sato review, execute additive SQL in controlled order

safe_output_policy:
- initial file generation should use .tmp or another safe isolated root
- do not inject generated stubs into a production source tree as the first action
- compare generated files against the design documents before relocation

review_gates:
- gate_01_contract_review:
  - DTO names match the freeze document exactly
- gate_02_boundary_review:
  - repository and service responsibilities remain separated
- gate_03_schema_review:
  - DDL aligns with the planned row families
- gate_04_query_review:
  - relationship and company timeline responses remain bound to their exact payload sources
- gate_05_audit_review:
  - audit append seams remain separate from mutation repositories

abort_conditions:
- a command pack requires reopening payload names
- a field-filled plan conflicts with earlier freeze documents
- existing physical schema core names differ from assumptions materially
- SQL needs destructive change
- slice order is being bypassed

handoff_statement:
- this protocol is the bridge between the planning layer and the later execution layer.
