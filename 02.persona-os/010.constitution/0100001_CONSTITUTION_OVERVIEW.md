# ============================================================
# PERSONA OS CONSTITUTION OVERVIEW
# ============================================================

status: implementation-ready-followup
system: PersonaOS
layer: constitution
canonical: true

purpose:
Defines the non-negotiable authority rules that all PersonaOS
design and implementation must follow.

constitutional_rules:
- truth mutation authority belongs only to canonical apply
- builder may prepare changes but may not directly rewrite truth
- runtime execution state is never truth by itself
- release artifacts must be immutable once issued
- external release requires explicit rights decision
- license, access grant, and transfer are separate authorities
- all terminal paths require durable audit evidence
- retry and dead-letter handling must preserve trace continuity

override_rule:
When an older descriptive file conflicts with an exact implementation-ready
contract, the exact contract wins.
