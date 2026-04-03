# ============================================================
# INFRASTRUCTURE MANAGEMENT ENTRY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: infrastructure-management-entry-ui
component: infrastructure-management-entry-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for entering infrastructure placement
and infrastructure management flows
through dedicated infrastructure authority facilities.

This architecture defines:

- authority facility entry
- infrastructure management home
- road, rail, station, and port entry flows
- direct field-map infrastructure shortcut
- authority resolution and permission display
- line placement and node placement separation


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Infrastructure placement should normally begin
from an infrastructure authority facility.

Examples include:

- road authority facility
- rail operator facility
- national rail authority facility
- city transit authority facility
- port authority facility

A direct field-map shortcut may exist,
but it must still resolve
to a valid authority owner behind the action.


# ============================================================
# 3. ENTRY PRINCIPLE
# ============================================================

Infrastructure management must separate:

- authority facility overview
- infrastructure management home
- line placement entry
- node placement entry
- replacement and removal entry
- permission and approval feedback
- network status overview


# ============================================================
# 4. FINAL RULE
# ============================================================

Infrastructure UI must make it clear
who is acting,
what network is being edited,
and what kind of infrastructure action is allowed.
