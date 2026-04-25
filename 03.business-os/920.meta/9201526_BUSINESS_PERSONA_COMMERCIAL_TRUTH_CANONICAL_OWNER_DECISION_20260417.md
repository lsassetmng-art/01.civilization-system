# ============================================================
# BUSINESS PERSONA COMMERCIAL TRUTH CANONICAL OWNER DECISION
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Formally decide the canonical owner for persona-related commercial truth.

decision:
- BusinessOS is the canonical owner for persona-related commercial truth.

business_truth_scope:
- product commercial definition
- product sku commercial definition
- subscription plan commercial definition
- order truth
- billing truth
- invoicing truth
- contract truth
- approval truth
- entitlement truth as commercial right
- revenue and accounting-origin commercial records

persona_scope_limit:
- PersonaOS may keep persona-apply eligibility.
- PersonaOS may keep internal usage state.
- PersonaOS must not own the final commercial truth for trade, billing, or contract state.

canonical_split:
- sell / contract / bill / approve / account / record revenue = BusinessOS
- apply to persona / maintain persona-side usable state / snapshot usage-facing state = PersonaOS

result:
- Canonical owner for persona commercial truth fixed to BusinessOS.
