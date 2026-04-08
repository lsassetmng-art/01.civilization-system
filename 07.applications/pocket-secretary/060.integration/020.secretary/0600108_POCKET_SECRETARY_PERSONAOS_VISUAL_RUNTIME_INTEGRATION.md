# ============================================================
# POCKET SECRETARY PERSONAOS VISUAL RUNTIME INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the bounded integration between PocketSecretary
and the shared PersonaOS VisualRuntime domain.

integration role:
- issue bounded render-related request where applicable
- receive bounded render result, fallback result, or failure state
- preserve local UI continuity during delayed or failed render resolution

rules:
- PocketSecretary does not own shared VisualRuntime authority
- render success does not imply business or permission success
- fallback and failure states must remain distinguishable in application handling
