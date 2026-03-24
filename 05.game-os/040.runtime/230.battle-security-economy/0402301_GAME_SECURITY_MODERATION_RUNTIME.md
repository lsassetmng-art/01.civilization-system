# ============================================================
# GAME SECURITY MODERATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for anti-cheat incident, moderation action, and replay handling.

runtime_scope:
- validate security target
- validate authority and evidence basis
- update security or moderation lifecycle state
- preserve security traceability

trigger_conditions:
- anti-cheat incident recorded
- moderation proposed
- moderation approved
- replay recorded
- moderation reversed

processing_steps:
1 resolve anti-cheat, moderation, or replay target
2 verify authority, evidence, and source-session basis
3 apply security state transition
4 persist security result
5 preserve audit and security trace

state_transition:
- recorded -> under_review
- under_review -> actionable
- actionable -> resolved
- proposed -> approved
- approved -> applied
- applied -> reversed
- recorded -> published
- published -> corrected
- published -> invalidated

success_condition:
- game security lifecycle updated explicitly

failure_condition:
- invalid target
- authority, evidence, or source basis unresolved
- persistence failure
