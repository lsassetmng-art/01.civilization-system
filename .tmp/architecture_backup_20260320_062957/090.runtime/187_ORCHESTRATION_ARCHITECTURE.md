# ============================================================
# ORCHESTRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Orchestration defines cross-domain execution order and dependency sequencing.

purposes:
- coordinate multi-domain consequences
- prevent circular execution
- preserve deterministic processing order
- isolate domain failures

orchestration_examples:
- player_action_event
  -> permission_validation
  -> domain_handler
  -> downstream_events
  -> notification
  -> logging

- tax_collected_event
  -> revenue_ledger_recorded
  -> treasury_balance_transition_requested
  -> observability_metric_emitted

rules:
- orchestration cannot invent domain decisions
- cross-domain consequences must be explicit
- execution order must be documented and stable

final_rule:
Orchestration coordinates explicit consequences,
but may not become hidden business logic.
