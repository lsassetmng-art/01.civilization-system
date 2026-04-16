# ============================================================
# POCKET SECRETARY NOTIFICATION TIER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared Notification Common
through app-specific plan tiers.

common reference:
PersonaOS notification common policy defines:
- notification as useful, quiet, contextual, and non-authoritative
- grouped summary preferred over spam
- quiet hours suppress non-critical noise
- secretary-style wording remains advisory

PocketSecretary-specific policy:
- free provides basic notification only
- pro and enterprise may provide advanced notification

rules:
- advanced notification may include grouped summary,
  priority-based, re-notification, state-linked,
  contextual, and secretary-style wording
- notification must remain state-honest and advisory
