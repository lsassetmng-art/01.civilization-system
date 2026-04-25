# ============================================================
# POCKETSECRETARY PHASE A EXECUTION ENTRY PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-entry-protocol

purpose:
Defines the exact protocol to follow when the project later moves
from planning artifacts into actual stub generation or SQL execution.

entry_principles:
- do not begin from slice_03
- do not generate all files at once without slice order
- do not execute SQL before review
- keep additive only
- keep command packs as the sole sequence authority
- do not reopen already frozen DTO names casually

execution_start_order:
- step_01:
  - execute slice_01 command pack into a safe output root
- step_02:
  - fill slice_01 contents according to the field-fill plan
- step_03:
  - review compile surface and naming consistency
- step_04:
  - execute slice_02 command pack
- step_05:
  - fill slice_02 contents according to the field-fill plan
- step_06:
  - review candidate-to-timeline seam
- step_07:
  - execute slice_03 command pack
- step_08:
  - fill slice_03 contents according to the field-fill plan
- step_09:
  - review daily briefing assembly seam
- step_10:
  - only after design-to-code review, prepare SQL apply pack
- step_11:
  - only after review, execute additive SQL in controlled order

safe_output_policy:
- initial file generation should use .tmp or another isolated root
- do not inject generated stubs into a production source tree as the first action
- compare generated files against design documents before relocation

review_gates:
- gate_01_contract_review:
  - DTO names match the freeze document exactly
- gate_02_boundary_review:
  - repository and service responsibilities remain separated
- gate_03_schema_review:
  - DDL aligns with the planned row families
- gate_04_briefing_review:
  - daily briefing response remains bound to the fixed payload family
- gate_05_audit_review:
  - audit append seams remain separate from mutation repositories

abort_conditions:
- a command pack requires reopening DTO names
- a field-fill plan conflicts with earlier freeze documents
- existing physical schema core names differ from assumptions materially
- SQL needs destructive change
- slice order is being bypassed

handoff_statement:
- this protocol is the bridge between the planning layer and the later execution layer.
