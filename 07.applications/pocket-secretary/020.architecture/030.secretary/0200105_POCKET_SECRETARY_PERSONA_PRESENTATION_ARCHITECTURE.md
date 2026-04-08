# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Persona presentation is a client-facing expression layer,
not an authority source.

responsibilities:
- render persona-related visual state
- present secretary-like interaction
- reflect bounded Persona-linked local state
- support assistant-style guidance

non-responsibilities:
- issuing authority
- final approval
- permission ownership
- source-of-truth identity mutation

rules:
- Persona presentation and action authority must remain separated
- rendering failure must not be treated as authority failure
- Persona style must not change permission logic
