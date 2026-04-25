# ============================================================
# BUSINESS PERSONA COMMERCIAL STATE TRANSITION RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the state transition direction between Business commercial truth and Persona apply-ready state.

transition_rule:
- commercial truth transitions originate in BusinessOS
- PersonaOS transitions for mirror / derived / apply-ready state are downstream consequences

minimum_transition_paths:
- purchase_complete
  - BusinessOS: completed purchase truth
  - PersonaOS: may create apply-ready state
- grant
  - BusinessOS: authoritative grant truth
  - PersonaOS: enable usable/apply-ready state
- revoke
  - BusinessOS: authoritative revoke truth
  - PersonaOS: disable/remove usable/apply-ready state
- subscription_change
  - BusinessOS: authoritative subscription state change
  - PersonaOS: refresh mirror/apply-ready state

conflict_rule:
- on conflict, Business truth wins
- PersonaOS must converge to Business truth-derived state

result:
- Business Persona commercial state transition rule fixed as a canonical meta record.
