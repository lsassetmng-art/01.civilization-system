# PERSONA STATE APPLY FINAL TARGETED FOLLOWUP HANDOFF MEMO

status: final-targeted-baseline
system: PersonaOS
layer: meta
confirmed_at: 20260418_204614

purpose:
Provides the shortest handoff for the single most important function after broad PersonaOS Edge consolidation.

summary:
- persona-state-apply is the first function to read if targeted followup resumes
- its role is stable
- its truth boundary split is stable
- its idempotency and retry semantics are stable
- its snapshot trigger policy split is stable at policy level
- only narrow refinements remain

operator_rule:
Do not reopen runtime-engine family docs broadly.
Reopen persona-state-apply only if the followup is one of the allowed refinements in the final refinement scope.

