# ============================================================
# NOTIFICATION TIER COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines the common notification capability tiers.

common tiers:
- basic_notification
- advanced_notification

basic notification may include:
- schedule reminder
- todo due reminder
- simple local reminder

advanced notification may include:
- grouped summary notification
- priority-based notification
- re-notification control
- state-linked notification
- contextual notification wording
- secretary-style wording

rules:
- tier defines notification capability range
- tier does not define app-specific pricing or plan names
