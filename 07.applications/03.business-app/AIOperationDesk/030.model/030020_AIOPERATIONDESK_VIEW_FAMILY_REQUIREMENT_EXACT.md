# ============================================================
# AI OPERATION DESK VIEW FAMILY REQUIREMENT EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: model
owner: Boss
prepared_by: Zero

purpose:
Define what kind of view-family requirement AIOperationDesk expects
for AI-worker read access through cx22073jw, without finalizing the
AI-side official access ledger.

fixed_rule:
- AI workers do not read raw aiworker or business tables directly.
- AI workers read AI-worker-only view families on cx22073jw.
- Final official mapping remains AI design responsibility.

required_view_families_for_operations_domain:
- VF00_PUBLIC_GUIDE
- VF01_APP_HELP
- VF02_MASKED_CONTEXT
- VF03_OPERATION_CONTEXT
- VF04_AUDIT_CONTEXT
- VF05_PRIVILEGED_CONTEXT

role_to_family_requirement:
  consult_support:
    required:
      - VF00_PUBLIC_GUIDE
      - VF01_APP_HELP
      - VF02_MASKED_CONTEXT
    conditional:
      - VF03_OPERATION_CONTEXT
  operator_help:
    required:
      - VF00_PUBLIC_GUIDE
      - VF01_APP_HELP
    conditional:
      - VF02_MASKED_CONTEXT
  draft_assist:
    required:
      - VF00_PUBLIC_GUIDE
      - VF01_APP_HELP
      - VF02_MASKED_CONTEXT
    conditional:
      - VF03_OPERATION_CONTEXT
  operation_orchestration:
    required:
      - VF00_PUBLIC_GUIDE
      - VF01_APP_HELP
      - VF02_MASKED_CONTEXT
      - VF03_OPERATION_CONTEXT
    conditional:
      - VF04_AUDIT_CONTEXT
  queue_support:
    required:
      - VF03_OPERATION_CONTEXT
    conditional:
      - VF04_AUDIT_CONTEXT
  retry_support:
    required:
      - VF02_MASKED_CONTEXT
      - VF03_OPERATION_CONTEXT
    conditional:
      - VF04_AUDIT_CONTEXT
  audit_support:
    required:
      - VF04_AUDIT_CONTEXT
    conditional:
      - VF03_OPERATION_CONTEXT
      - VF05_PRIVILEGED_CONTEXT
  privileged_assist:
    required:
      - VF03_OPERATION_CONTEXT
      - VF04_AUDIT_CONTEXT
    conditional:
      - VF05_PRIVILEGED_CONTEXT

rules:
- VF05_PRIVILEGED_CONTEXT is never assumed fully open.
- Privileged release conditions are finalized by AI design.
- View-family use is read-only.
- Execution always routes to controlled write surfaces.
