# ============================================================
# BUSINESS LEGAL SUPPORT ISSUE CLEANUP RUNBOOK
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 030.runbook
owner: Boss
prepared_by: Zero

cleanup_runbook:
  step_1:
    - find completed issues older than chosen threshold
  step_2:
    - confirm no near deadline remains
  step_3:
    - confirm no active share should remain
  step_4:
    - archive instead of delete by default
  step_5:
    - soft delete only when owner explicitly decides

cleanup_principles:
  - archive first
  - delete later if truly unnecessary
  - preserve consultation support trace as long as reasonable
