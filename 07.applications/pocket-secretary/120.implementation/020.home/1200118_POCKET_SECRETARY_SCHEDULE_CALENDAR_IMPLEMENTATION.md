# ============================================================
# POCKET SECRETARY SCHEDULE CALENDAR IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for schedule calendar realization.

implementation directions:
- implement free-core schedule calendar functionality
- support month view and day view
- support local schedule create/edit behavior
- keep local state and external confirmation state distinguishable

rules:
- schedule calendar must remain available without AI secretary capability
- view switching must not change underlying schedule meaning
