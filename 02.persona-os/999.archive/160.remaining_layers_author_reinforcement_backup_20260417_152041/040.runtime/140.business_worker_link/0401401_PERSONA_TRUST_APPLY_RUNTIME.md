# ============================================================
# PERSONA TRUST APPLY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-worker-link
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines trust-apply runtime.

runtime_states:
- received
- validated
- applied
- rejected

rule:
Business-origin effects may influence trust,
but PersonaOS decides the canonical result.
