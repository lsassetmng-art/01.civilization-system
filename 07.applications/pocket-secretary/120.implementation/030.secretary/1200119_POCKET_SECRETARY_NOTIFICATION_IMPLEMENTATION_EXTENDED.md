# ============================================================
# POCKET SECRETARY NOTIFICATION IMPLEMENTATION EXTENDED
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific advanced notification implementation
based on the shared Notification Common.

common reference:
PersonaOS notification common defines shared meaning for:
- notification tier
- grouped summary
- quiet hours
- daily summary
- contextual wording

PocketSecretary-specific implementation directions:
- keep free on basic notification behavior only
- implement grouped summary notification for advanced tiers
- implement priority-based notification for advanced tiers
- implement bounded re-notification control
- implement contextual wording without changing authority semantics
- allow secretary-style notification wording only on pro and enterprise

rules:
- advanced notification must stay plan-bounded
- notification implementation must remain state-honest
- notification wording must not imply approval or submission success
