# ============================================================
# POCKET SECRETARY ARCHITECTURE DEPENDENCY RULE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

rule:
Dependency direction must remain explicit and bounded.

allowed direction:
interface
-> application orchestration
-> runtime
-> local data / integration / security support

prohibited patterns:
- UI directly owning authority logic
- Persona presentation directly finalizing external requests
- integration modules mutating unrelated module state implicitly
- lower-level implementation redefining architectural boundaries
