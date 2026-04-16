# ============================================================
# POCKET SECRETARY NOTIFICATION IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for local notification behavior.

implementation directions:
- notification dispatch must be driven by actual runtime state
- local reminder scheduling should remain bounded
- notification handling should not imply external success
- review-required notifications should route users to explicit review surfaces

examples:
- schedule reminder notification
- todo due notification
- pending sync notification
- ERP review-needed notification
