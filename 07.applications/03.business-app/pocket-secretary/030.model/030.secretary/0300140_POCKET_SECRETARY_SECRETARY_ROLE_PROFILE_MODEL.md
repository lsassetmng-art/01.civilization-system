# ============================================================
# POCKET SECRETARY SECRETARY ROLE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific visible role assignment
based on the shared Secretary Role Presentation Common model.

common reference:
PersonaOS secretary interaction common defines visible role presentation.

PocketSecretary visible role mapping:
- asset_misaki: standard secretary
- asset_hina: personal support secretary
- asset_rin: work support secretary

rules:
- visible role description should remain short and practical
- deep lore should remain more restricted than visible role information
