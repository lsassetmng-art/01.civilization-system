# PERSONA SNAPSHOT VERIFY EXTERNAL SAFE DISCLOSURE RULE

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_185334

purpose:
Defines what snapshot-verify may safely disclose in public-safe response fields.

safe_disclosure_allowed:
- compact status family
- exact public-safe result code
- snapshot_id when resolvable and policy-safe
- key_reference when verification-safe and policy-safe
- generic safe reason text when needed

safe_disclosure_forbidden:
- private signing material
- internal exception stacks
- raw internal verification engine traces
- internal storage topology
- revocation internals beyond allowed public-safe reference
- hidden trust-chain implementation details

disclosure_rules:
- unknown_key may disclose a verification-safe key reference only if policy allows
- internal_error may expose only generic safe reason text
- malformed may omit snapshot_id if object identity cannot be safely resolved
- revoked may expose revocation_reference only if publication-safe

hard_rule:
Public-safe response fields must communicate outcome clearly without leaking internals.

