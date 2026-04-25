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

# EXACT READY CONSTITUTION REINFORCEMENT

status_extension: author-reviewed-with-constitution-reinforcement
reinforced_at: 20260417_150617
reinforcement_scope:
- authority clarification
- non-bypass clarification
- audit obligation clarification
- precedence clarification

domain: generic

minimum_constitution_requirements:
- name the authority owner for this domain
- define what decisions require explicit approval
- define which state mutations are forbidden outside authority
- define which terminal paths must remain auditable
- define override or precedence behavior against lower-layer narratives

mandatory_non_bypass_rules:
- no direct truth mutation outside named authority
- no silent override through runtime or integration
- no unaudited reject, release, grant, transfer, or replay decision
- no hidden fallback that changes constitutional meaning

mandatory_audit_requirements:
- actor identity
- decision timestamp
- subject or object identifier
- reason or code family
- terminal outcome

constitution_ready_note:
This reinforcement does not replace the authored constitutional content above.
It marks the minimum exact-ready constitutional items that must be explicit
before implementation or downstream policy binding is considered complete.
