# ============================================================
# POCKET SECRETARY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the major operational flows of PocketSecretary.

scope:
The flow layer defines ordered user-visible and system-visible
process flows built on top of the runtime layer.

flow_principles:
- local-first progression
- explicit review before critical external effect
- visible pending and failure transitions
- bounded recovery
- preservation of user intent during degraded states


# ============================================================
# 1. MAJOR FLOW DOMAINS
# ============================================================

PocketSecretary major flows include:

- application startup flow
- daily secretary interaction flow
- todo handling flow
- notification flow
- Persona presentation flow
- sync flow
- ERP request flow
- failure recovery flow
