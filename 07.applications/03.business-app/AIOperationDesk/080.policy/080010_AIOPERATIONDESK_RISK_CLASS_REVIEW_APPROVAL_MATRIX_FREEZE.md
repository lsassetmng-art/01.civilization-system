# ============================================================
# AI OPERATION DESK RISK CLASS REVIEW APPROVAL MATRIX FREEZE
# ============================================================

status: freeze-candidate
app: AIOperationDesk
layer: policy
owner: Boss
prepared_by: Zero

risk_classes:
- low
- medium
- high
- privileged

minimum_rules:
- low:
  - explanation and basic QA
  - draft assist may be allowed
- medium:
  - review may be required
  - structured draft and execution request creation allowed
- high:
  - review required
  - approval required when finalizing or externally impacting
- privileged:
  - strongest audit requirement
  - strongest review / approval requirement

cannot_be_unlocked_by_rank_alone:
- destructive change
- final posting
- final external send
- authority change
- ERP critical configuration finalization
- production-wide irreversible action
