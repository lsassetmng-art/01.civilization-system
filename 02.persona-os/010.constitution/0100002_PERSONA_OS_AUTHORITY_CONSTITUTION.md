# ============================================================
# PERSONA OS AUTHORITY CONSTITUTION
# ============================================================

status: implementation-ready-followup
system: PersonaOS
layer: constitution
canonical: true

authority_map:
- validation authority: accepts or rejects apply eligibility
- canonical apply authority: mutates truth state
- builder authority: edits mutable draft state only
- runtime authority: executes released inputs only
- snapshot authority: freezes release-side state
- package authority: distributes immutable release bundles
- rights authority: controls release scope, usage, access, and transfer
- operations authority: controls replay and incident actions with audit
- security authority: blocks unverifiable or unauthorized transitions

forbidden_bypasses:
- direct truth mutation from builder
- direct truth mutation from runtime
- direct truth mutation from callback integration
- package use without integrity verification
- external release without explicit scope and allow decision
- replay without operator approval and evidence retention

constitutional_done_definition:
A PersonaOS design is constitutionally acceptable only when all
major state transitions have a named authority and a non-bypass rule.
