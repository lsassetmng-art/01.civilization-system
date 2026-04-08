# ============================================================
# PERSONA SECURITY POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of security policies.

summary:
Security policy governs gate enforcement,
truth protection,
fail-closed behavior,
auditable rejection,
and non-optional protection controls.

policy_groups:
gate enforcement
credential handling
access policy enforcement
guardrail enforcement
constraint enforcement
security auditability

boundary:
Security policy does not redefine identity truth.
Security policy does not replace governance approval authority.
Security policy does not replace release/package/external-rights authority.
