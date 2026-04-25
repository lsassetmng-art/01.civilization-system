# ============================================================
# AI OPERATION DESK ACCESS BOUNDARY AND OUTPUT POLICY EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: security
owner: Boss
prepared_by: Zero

fixed_boundaries:
- AI workers do not directly access raw aiworker tables.
- AI workers do not directly access raw business canonical tables.
- AI workers read only through cx22073jw AI-worker-only view families.
- Final accessible data-area selection is decided by AI design.

output_policy:
- read scope does not equal output scope
- masked or summarized output is preferred unless detailed output is necessary
- supported-app-specific answers are limited to supported apps
- draft output must remain clearly draft / provisional / staging until finalized elsewhere
- privileged output is policy-bound and never assumed fully open by default

execution_boundary:
- execution never occurs by raw direct table manipulation from AI
- execution routes only to:
  - command row
  - draft row
  - staging row
  - official intake table
  - controlled function

rank_cannot_override:
- destructive change
- final posting
- final external send
- authority change
- ERP critical configuration finalization
- production-wide irreversible action
- audit logging requirement
- review / approval requirement
