# ============================================================
# LEGAL ENTITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

A legal subject capable of rights and obligations.

types:

- player
- organization
- government
- ai_agent

properties:

- identity
- authority_level
- jurisdiction
- ownership

constraints:

All actions must be tied to a legal entity.
Anonymous actions are forbidden.
