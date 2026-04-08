# ============================================================
# POCKET SECRETARY PERSONA RENDER ADAPTER IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance for PocketSecretary-side adapter handling
around the shared PersonaOS VisualRuntime.

implementation role:
- call bounded shared render capability
- receive render result state
- bind output to UI safely
- preserve loading / fallback / failure visibility

non-role:
- implement shared VisualRuntime engine internals
- re-own shared manifest/parser/composer/cache logic inside PocketSecretary
