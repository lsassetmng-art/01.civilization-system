# ============================================================
# POCKET SECRETARY MODULE BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Each module must have a clear boundary.

module categories:
- interaction modules
- state modules
- local storage modules
- persona modules
- external integration modules
- control and guard modules

requirements:
- each module must expose a bounded role
- permissions must not be inferred from UI presence
- local modules must not silently escalate to external action
- Persona modules must not own enterprise authority
- integration modules must remain auditable and replaceable
