# ============================================================
# PROJECT FLOW STATE TRANSITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines state-transition and review-transition boundaries.

state_domains:
- project execution state
- task execution state
- milestone execution state
- sync state
- report review state
- schedule proposal state
- export job state
- entitlement state

architecture_rules:
- execution state and review state must remain distinct
- proposal state and confirmed state must remain distinct
- sync boundary state must remain distinct from business execution state
- entitlement state must remain distinct from business item state
- export completion must not imply review completion automatically
