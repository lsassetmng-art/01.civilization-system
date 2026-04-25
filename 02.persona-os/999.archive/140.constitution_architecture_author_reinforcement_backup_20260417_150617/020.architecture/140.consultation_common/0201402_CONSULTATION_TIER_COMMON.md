# ============================================================
# CONSULTATION TIER COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines consultation tier levels independent of any one app plan.

common tiers:
- personal_only
- personal_plus_business

meaning:
personal_only:
Only personal consultation scopes are enabled.

personal_plus_business:
Personal consultation and business consultation scopes are enabled.

rules:
- tier defines allowed consultation scope range
- tier does not by itself define product pricing or plan naming
