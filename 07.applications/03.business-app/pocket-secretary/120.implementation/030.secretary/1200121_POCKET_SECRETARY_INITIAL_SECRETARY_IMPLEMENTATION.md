# ============================================================
# POCKET SECRETARY INITIAL SECRETARY IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific initial secretary implementation
based on the shared Secretary Interaction Common.

common reference:
PersonaOS secretary interaction common defines shared meaning for:
- secretary profile
- secretary switch
- visible role presentation
- summary bubble behavior

PocketSecretary-specific implementation directions:
- keep the concrete initial secretary set:
  - Sato Misaki
  - Takahashi Hina
  - Kamiya Rin
- support role-dependent wording and guidance style
- support explicit secretary switching from the home screen
- keep authority semantics unchanged across secretaries

rules:
- secretary-specific wording must not imply approval differences
- deep lore visibility should be more restricted than basic profile visibility
