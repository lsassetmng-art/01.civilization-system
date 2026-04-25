# ============================================================
# PUBLIC OVERSIGHT VISIBILITY BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K5-001

decision:
Public channel visibility and corporate oversight visibility remain distinct projection families.

public_channel_visibility:
- public-facing profile and summary subset
- viewer-safe channel presentation

oversight_visibility:
- company-scoped oversight-safe subset
- review issue and visibility summary context
- not public-scoped

rules:
- oversight projection must not leak into public channel profile
- public channel projection must not act as oversight source of truth
