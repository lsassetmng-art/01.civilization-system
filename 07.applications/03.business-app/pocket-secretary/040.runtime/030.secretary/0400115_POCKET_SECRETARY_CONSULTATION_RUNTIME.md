# ============================================================
# POCKET SECRETARY CONSULTATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific consultation runtime
based on the PersonaOS Consultation Common runtime.

common reference:
PersonaOS consultation common runtime defines:
- consultation start
- tier resolution
- scope determination
- context load
- guidance output
- summary update

PocketSecretary-specific runtime application:
- Pro resolves to personal consultation only
- Enterprise resolves to personal consultation
  plus company-secretary business consultation
- PocketSecretary may emphasize:
  - business_document
  - business_strategy
  - business_problem_solving
  - business_workflow

rules:
- consultation remains advisory at runtime
- consultation must not bypass explicit submission paths
- plan-bound runtime availability remains PocketSecretary-specific
