# ============================================================
# POCKET SECRETARY CONSULTATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Consultation Common.

common reference:
PersonaOS consultation common defines:
- consultation tier
- consultation scope
- advisory-only boundary
- consultation output boundary

PocketSecretary-specific application:
- Pro enables personal consultation only
- Enterprise enables personal consultation
  plus company-secretary business consultation

PocketSecretary business consultation emphasis:
- business_document
- business_strategy
- business_problem_solving
- business_workflow

rules:
- PocketSecretary consultation remains advisory
- PocketSecretary consultation does not own approval authority
- PocketSecretary-specific UI and plan gating remain defined here,
  while shared consultation meaning remains in PersonaOS common
