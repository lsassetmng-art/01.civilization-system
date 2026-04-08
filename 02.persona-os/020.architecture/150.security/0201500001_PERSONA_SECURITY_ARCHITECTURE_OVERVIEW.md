# ============================================================
# PERSONA SECURITY ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of PersonaOS security domain.

summary:
Security defines protection boundaries for truth,
draft,
release-facing workflows,
external-rights execution,
runtime hosting,
and sensitive state handling.

security_groups:
security state
security identity
access policy
credential
guardrail
behavior constraint
security gate

boundary:
Security protects truth but does not become truth authority itself.
Security identity is not identical to identity truth.
Security gate is not identical to governance approval authority.
Security may protect release/package/external-rights workflows,
but does not become those domains.
