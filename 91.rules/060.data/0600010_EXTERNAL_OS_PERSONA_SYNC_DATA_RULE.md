# ============================================================
# EXTERNAL OS PERSONA SYNC DATA RULE
# Civilization System Canonical Standard
# ============================================================

status: canonical
scope: cross-os
layer: 060.data

owner: Boss
prepared_by: Zero

purpose:
Define the minimum sync-side reference data required
for any external OS that consumes PersonaOS.

required_refs:
- <OS>_PERSONA_ACCESS_REF
- <OS>_PERSONA_LICENSE_REF
- <OS>_PERSONA_RELEASE_REF
- <OS>_PERSONA_USAGE_BINDING
- <OS>_PERSONA_GROWTH_REF
- <OS>_PERSONA_TRUST_REF
- <OS>_EVENT_OUTBOX
- <OS>_SYNC_EVENT_INBOX

trust_rule:
permission and trust are separate

permission:
Whether Persona may be used at all.

trust:
How strongly Persona may be exposed or relied upon
inside the external OS context.
