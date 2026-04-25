# PERSONA APPLY AUDIT SECURITY
status: canonical
layer: security
system: persona-os
scope: persona-apply-audit-security

Defines audit logging security requirements.

# ============================================================
# SECURITY EVIDENCE VS SECURITY VERDICT
# ============================================================

Audit-visible security traces related to VisualRuntime
remain evidence, not verdict authority.

Render-side traces, runtime-side observations,
and support-visible security-adjacent evidence
may be referenceable for audit,
but they must not silently replace:

- security verdict records
- authorization truth
- trusted-path truth
- signature-verification truth
- canonical protection-gate outcomes

The following equivalences are prohibited:

- security audit trace = security verdict
- render-side evidence = authorization truth
- runtime observation = trusted-path truth
- support trace = protection-gate record

Audit visibility may improve traceability,
but it must remain explicitly non-authoritative.

