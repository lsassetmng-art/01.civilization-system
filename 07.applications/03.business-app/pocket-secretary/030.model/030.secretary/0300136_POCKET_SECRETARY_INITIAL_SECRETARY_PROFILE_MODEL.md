# ============================================================
# POCKET SECRETARY INITIAL SECRETARY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific initial secretary profiles
based on the shared Secretary Profile Common model.

common reference:
PersonaOS secretary interaction common defines the shared
application-facing secretary profile structure.

PocketSecretary initial profile set:
- Sato Misaki / asset_misaki / vp_misaki_default
- Takahashi Hina / asset_hina / vp_hina_default
- Kamiya Rin / asset_rin / vp_rin_default

PocketSecretary visible role mapping:
- asset_misaki -> standard secretary
- asset_hina -> personal support secretary
- asset_rin -> work support secretary

rules:
- PocketSecretary keeps the concrete initial cast mapping
- display profile and deep lore profile remain distinguishable
- secretary personality difference must not alter authority rules
