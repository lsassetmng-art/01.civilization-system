# ============================================================
# PERSONA SECURITY INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of security interfaces.

summary:
Security interfaces define explicit gate results,
rejection results,
credential-bound responses,
and security-relevant audit semantics.

interface_groups:
gate result
rejection result
credential-bound response
audit output

boundary:
Security interfaces do not redefine identity truth.
Security interfaces do not replace governance approval decisions.
Security interfaces provide security outcome semantics, not domain authority transfer.
