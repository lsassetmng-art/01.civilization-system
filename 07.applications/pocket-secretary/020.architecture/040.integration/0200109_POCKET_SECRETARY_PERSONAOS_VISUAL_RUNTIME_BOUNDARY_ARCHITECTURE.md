# ============================================================
# POCKET SECRETARY PERSONAOS VISUAL RUNTIME BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural boundary between PocketSecretary
and the shared PersonaOS VisualRuntime.

position:
PersonaOS VisualRuntime is a shared external/common design domain.
PocketSecretary is a consuming application client of that domain.

PocketSecretary responsibilities:
- request bounded Persona presentation refresh
- receive render result or fallback result
- bind result to application UI
- preserve separation between presentation and authority

non-responsibilities:
- owning VisualRuntime core architecture
- defining shared manifest internals
- defining shared compose engine internals
- defining shared cache/downloader internals

rules:
- PocketSecretary must treat VisualRuntime as an external shared capability
- render result handling and VisualRuntime core ownership remain separate
