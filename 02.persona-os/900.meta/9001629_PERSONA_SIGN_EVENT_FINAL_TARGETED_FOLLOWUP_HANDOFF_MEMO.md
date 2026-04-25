# PERSONA SIGN EVENT FINAL TARGETED FOLLOWUP HANDOFF MEMO

status: final-targeted-baseline
system: PersonaOS
layer: meta
confirmed_at: 20260418_212013

purpose:
Provides the shortest handoff for the next trust-support function after the top followup set.

summary:
- sign-event is the signature generation support boundary
- its request and response semantics are stable
- its key selection and disclosure rules are stable
- its relation to verification and key publication is stable
- only narrow refinements remain

operator_rule:
Do not reopen the whole trust family.
Reopen sign-event only if the followup is one of the allowed refinements in the final refinement scope.

