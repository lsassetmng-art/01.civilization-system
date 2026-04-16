# ============================================================
# SPEED EXPERIENCE FAILURE FLOW
# ============================================================

status: canonical-draft
layer: flow
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines failure and fallback flow for speed-experience functions.

flow:
attempt speed-experience action
-> validate request and authority
-> success or failure
-> if failure then show reason
-> offer retry / reduce scope / switch device / switch mode
-> preserve reviewable trace
