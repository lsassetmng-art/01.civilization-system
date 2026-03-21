# ============================================================
# PERSONA EDGE ARCHITECTURE
# ============================================================

PersonaOS uses Supabase Edge Functions
as runtime execution units.

Major functions:

persona-create
persona-state-apply
visual-generation-job-create
visual-compose
visual-render-result-commit
snapshot-issue
snapshot-verify
snapshot-revoke
sign-event

All Edge functions must follow:

fail-closed design
idempotent execution
signed event handling

