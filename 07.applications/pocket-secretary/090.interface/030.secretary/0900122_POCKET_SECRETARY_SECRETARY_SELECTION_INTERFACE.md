# ============================================================
# POCKET SECRETARY SECRETARY SELECTION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific secretary selection interface
based on the shared Secretary Selection Common interface.

common reference:
PersonaOS secretary interaction common interface defines:
- secretary list or selection sheet
- current highlight
- preview image
- short visible role description
- explicit selection

PocketSecretary-specific initial secretary set:
- Sato Misaki
- Takahashi Hina
- Kamiya Rin

rules:
- application-facing role difference should be understandable
- switching must remain explicit
- selection UI must not overexpose deep lore by default
