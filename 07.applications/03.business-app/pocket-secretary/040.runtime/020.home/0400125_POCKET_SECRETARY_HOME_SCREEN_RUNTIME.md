# ============================================================
# POCKET SECRETARY HOME SCREEN RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific home runtime
using the shared Secretary Interaction Common.

common reference:
PersonaOS secretary interaction common runtime defines:
- secretary switch common runtime
- summary bubble common runtime

PocketSecretary-specific runtime areas:
- speech bubble content placement
- primary button interaction
- secretary render binding
- background render binding
- settings entry
- home refresh

rules:
- speech bubble shows bounded informational or advisory content only
- home refresh must preserve visible honesty of state
- render result and actual business state remain distinct
