# ============================================================
# NOTIFICATION CONTROL COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common notification control capabilities.

control areas:
- quiet hours
- grouped summary
- daily summary
- re-notification timing
- contextual wording level

rules:
- notification control exists to reduce noise
- notification control must not create false authority
