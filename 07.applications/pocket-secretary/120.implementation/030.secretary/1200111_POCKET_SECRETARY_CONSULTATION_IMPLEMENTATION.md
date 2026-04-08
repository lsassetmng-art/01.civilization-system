# ============================================================
# POCKET SECRETARY CONSULTATION IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific consultation implementation
based on the PersonaOS Consultation Common implementation direction.

common reference:
PersonaOS consultation common defines shared meaning for:
- consultation scope
- consultation tier
- advisory-only output boundary

PocketSecretary-specific implementation directions:
- implement tier-aware consultation surfaces
- keep Pro consultation limited to personal matters
- allow Enterprise consultation to include:
  - business document support
  - business strategy tool/framework suggestion
  - business problem-solving proposal
  - business workflow next-step suggestion
- preserve advisory-only behavior in application implementation

rules:
- consultation output must not act as approval state
- consultation tier boundary must be enforced in actual PocketSecretary behavior
