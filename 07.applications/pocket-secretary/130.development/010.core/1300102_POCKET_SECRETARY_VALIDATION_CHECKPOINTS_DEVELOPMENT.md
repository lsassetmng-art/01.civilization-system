# ============================================================
# POCKET SECRETARY VALIDATION CHECKPOINTS DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

validation checkpoints:
- local data persists correctly
- pending / confirmed / failed states are visually distinct
- offline mode preserves local work
- Persona presentation does not imply authority
- ERP request review cannot be skipped
- transport success is not shown as business success
- retry behavior remains bounded

rules:
- each major feature must validate against constitutional constraints
- critical path validation must exist before release readiness
