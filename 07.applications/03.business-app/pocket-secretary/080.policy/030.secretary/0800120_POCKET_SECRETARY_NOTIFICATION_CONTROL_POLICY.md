# ============================================================
# POCKET SECRETARY NOTIFICATION CONTROL POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared Notification Common controls
to reduce noise and keep notifications useful.

common reference:
PersonaOS notification common policy defines:
- quiet hours
- grouped summary
- daily summary
- advisory wording

PocketSecretary-specific rules:
- quiet hours should suppress non-critical noise
- grouped summary should be preferred over notification spam
- advanced notification remains pro/enterprise-bounded
- notification must remain advisory, not authoritative
