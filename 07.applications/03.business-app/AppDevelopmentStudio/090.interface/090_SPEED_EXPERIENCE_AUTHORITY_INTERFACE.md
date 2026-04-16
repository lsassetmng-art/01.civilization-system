# ============================================================
# SPEED EXPERIENCE AUTHORITY INTERFACE
# ============================================================

status: canonical-draft
layer: interface
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines interface direction for authority and state visibility
in speed-experience flows.

required_views:
- current speed state
- current mode state
- authority availability
- disabled action reason
- promote-to-governed confirmation
- revert confirmation

display_principles:
- unavailable actions must explain why
- fast-mode and governed-mode must be visually distinct
- authority-sensitive actions must require explicit confirmation
