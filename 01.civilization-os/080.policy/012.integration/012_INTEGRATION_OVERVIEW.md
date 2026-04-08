# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the policy overview of the integration domain.

summary:
The integration policy layer defines what contracts may cross boundaries,
what authority is required,
how projection must be constrained,
how proposal-path and canonical-write path must remain separated,
and how traces and historical contracts are retained.

policy_intent:
Integration is a boundary-governed activity.
Policy exists to prevent silent overwrite,
authority inflation, unsafe export,
unlabeled replay, and deletion of required audit trace.

scope:
- contract disclosure policy
- authority policy
- proposal-only policy
- bounded-sync policy
- event integration policy
- retention and audit policy

policy_rules:
- Integration must remain contract-based and typed.
- Proposal-only and canonical-write paths must remain distinct.
- Authority-sensitive transfer requires explicit authority basis.
- Historical contracts and replay events must be labeled and retained.
- Silent overwrite of canonical truth is prohibited without explicit authority path.
