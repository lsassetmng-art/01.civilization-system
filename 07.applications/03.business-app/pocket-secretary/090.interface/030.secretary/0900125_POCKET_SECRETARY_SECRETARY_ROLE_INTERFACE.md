# ============================================================
# POCKET SECRETARY SECRETARY ROLE INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific visible role presentation
based on the shared Secretary Role Presentation Common.

required UI elements:
- short role label
- brief support description
- secretary preview
- current secretary highlight

PocketSecretary role mapping:
- Sato Misaki: standard secretary
- Takahashi Hina: personal support secretary
- Kamiya Rin: work support secretary

rules:
- visible role description should be short and practical
- deep lore should remain more restricted than visible role information
