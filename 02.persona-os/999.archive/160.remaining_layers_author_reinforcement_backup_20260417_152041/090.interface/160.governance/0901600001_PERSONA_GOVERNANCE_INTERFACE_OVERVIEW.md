# ============================================================
# PERSONA GOVERNANCE INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: governance
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of governance interfaces.

summary:
Governance interfaces define explicit approval,
moderation,
eligibility,
decision-result,
and rejection-result contracts.

scope:
approval request
approval result
moderation result
eligibility result
rejection output

boundary:
Governance interfaces do not directly mutate persona truth.
Governance interfaces do not replace security gate results.
Governance interfaces do not replace builder preparation behavior.
