# ============================================================
# EVENT SECURITY RULE
# ============================================================

status: canonical
scope: event
component: event-security-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define security rules around events.


# RULES

Executable events must be validated.
Signature verification is required where applicable.
Event origin must be traceable.


# FINAL RULE

Untrusted events must never reach runtime.

