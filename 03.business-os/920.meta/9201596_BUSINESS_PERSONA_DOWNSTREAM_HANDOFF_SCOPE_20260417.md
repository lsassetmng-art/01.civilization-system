# ============================================================
# BUSINESS PERSONA DOWNSTREAM HANDOFF SCOPE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the scope of what BusinessOS hands downstream to PersonaOS for persona-related commerce.

handoff_scope:
- business-origin event family
- transport-level delivery semantics
- downstream projection rules
- acceptance criteria for mirror / derived / apply-ready behavior
- operator-visible recovery semantics for replay and reconciliation

not_handed_off_as_authority:
- final order truth
- final billing truth
- final contract truth
- final subscription truth
- final entitlement commercial truth
- ERP-facing commercial origin

handoff_boundary_rule:
- BusinessOS hands off downstream consumer responsibilities, not upstream commercial ownership.
- PersonaOS receives authoritative Business-origin signals and projects local apply-ready state.

result:
- Downstream handoff scope fixed as a canonical meta record.
