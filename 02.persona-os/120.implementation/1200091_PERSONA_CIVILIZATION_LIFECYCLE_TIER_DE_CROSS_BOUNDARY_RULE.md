# PERSONA CIVILIZATION LIFECYCLE TIER DE CROSS BOUNDARY RULE

status: tier-de-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_183303

purpose:
Fixes cross-boundary interaction between lifecycle and civilization integration families.

cross_boundary_rules:
- persona-create may establish lifecycle entry but does not replace runtime event flow
- persona-event-history may read history surfaces but does not participate in dispatch ownership
- civilization-event-producer and dispatcher operate on event flow, not lifecycle retrieval
- event-validate remains contract gate before runtime handoff
- civilization-event-dispatcher may route to persona-state-apply
- persona-state-apply remains the concrete runtime-engine edge name
- state_apply behind it remains the canonical truth mutation boundary

hard_rules:
- lifecycle retrieval must not be used as dispatch backdoor
- dispatch surfaces must not masquerade as lifecycle retrieval
- no function in these families becomes mutable truth owner merely by label

