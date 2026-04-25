# ============================================================
# BUSINESS PERSONA COMMERCIAL IMPLEMENTATION ALIGNMENT RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Translate the Business-owned commercial truth decision into implementation-facing alignment rules.

implementation_rule:
- BusinessOS owns the authoritative write path for persona-related commercial truth.
- PersonaOS must not introduce a competing authoritative write path for product, order, subscription,
  billing, entitlement-commercial truth, contract, or revenue state.
- PersonaOS may materialize mirror / derived / apply-ready state only after Business-origin truth is emitted.

required_alignment:
- product and sku commercial truth authored in BusinessOS
- order completion authored in BusinessOS
- subscription authority authored in BusinessOS
- grant / revoke authority authored in BusinessOS
- ERP-facing commercial export authored in BusinessOS

implementation_effect:
- new implementation work must place authoritative mutation endpoints in BusinessOS
- PersonaOS integration work must be treated as downstream consumer work

result:
- Business Persona commercial implementation alignment fixed as a canonical meta rule.
