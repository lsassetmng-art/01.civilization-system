# ============================================================
# AI OPERATION DESK INTEGRATED CANONICAL
# ============================================================

status: draft-fixed
app: AIOperationDesk
category: 03.business-app
owner: Boss
prepared_by: Zero

integrated_summary:
AI Operation Desk is the operational governance hub for AI workers.
It governs review, approval, audit, retry, queue, notification,
batch summary, and controlled execution routing. It supports text
and voice request intake, converts requests into work orders, and
executes through controlled surfaces only.

fixed_role_boundaries:
- AiworkerOS owns AI worker canonical truth.
- BusinessOS owns business-side order / plan / billing / dispatch /
  approval / ERP linkage truth.
- cx22073jw provides AI-worker-only read views.
- AI Operation Desk does not own worker truth or raw AI access truth.
- Final accessible data area design remains with AI design.

support_modes:
- resident mode:
  - ERP
  - all OS Builder families
- nonresident help mode:
  - other supported apps

erp_lane_model:
- consult lane
- draft lane
- execution lane

write_surface_policy:
- allowed:
  - command row
  - draft row
  - staging row
  - official intake table
  - controlled function
- forbidden:
  - unrestricted direct write to canonical internals
  - ungated final posting
  - ungated destructive action
  - audit-missing update

next_design_focus:
- target work ledger freeze
- supported app registry freeze
- connector taxonomy freeze
- risk / review / approval matrix freeze
- resident surface / execution flow freeze
