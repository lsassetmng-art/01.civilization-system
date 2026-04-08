# ============================================================
# POCKET SECRETARY CONSULTATION SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific consultation session usage
based on the PersonaOS Consultation Common model.

common reference:
PersonaOS consultation common defines the shared structure of:
- consultation_tier
- consultation_scope
- advisory consultation output

PocketSecretary-specific usage:
- Pro uses personal consultation scope
- Enterprise uses personal consultation and
  company-secretary business consultation scopes

PocketSecretary business consultation scope emphasis:
- business_document
- business_strategy
- business_problem_solving
- business_workflow

rules:
- consultation session state does not equal approval state
- app-specific tier gating remains PocketSecretary-specific
