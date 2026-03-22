# ============================================================
# PERSONA EDGE DEVELOPMENT GUIDE
# ============================================================

status: canonical
component: persona-edge-development

owner: Boss
prepared_by: Zero

# PURPOSE

Define standards for developing
Supabase Edge functions used by PersonaOS.

# EDGE RESPONSIBILITIES

Edge functions may perform:

event ingestion
signature verification
persona runtime operations
snapshot generation
visual composition

# DEVELOPMENT RULES

Edge functions must be:

stateless
deterministic
idempotent where possible

# ERROR HANDLING

Errors must produce structured logs.

Fail-safe rules:

reject invalid events
never mutate state silently

