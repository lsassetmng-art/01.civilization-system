# ============================================================
# POCKET SECRETARY SCHEDULE INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for schedule viewing,
editing, reminder inspection, and bounded sync visibility.

required UI elements:
- schedule list or calendar surface
- schedule detail view
- create / edit action
- local / pending / confirmed status display
- conflict indication where applicable

rules:
- schedule state must be visually distinguishable
- external confirmation must not be implied without confirmation
