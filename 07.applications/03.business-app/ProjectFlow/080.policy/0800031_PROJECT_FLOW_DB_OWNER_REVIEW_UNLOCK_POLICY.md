# ============================================================
# PROJECT FLOW DB OWNER REVIEW UNLOCK POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines what may be unlocked
after DB-owner review results are recorded.

result_categories:
- pass
- partial
- hold

policy_rules:

pass:
- DB-phase planning may proceed for confirmed areas
- schema-name usage may be treated as fixed for ProjectFlow DB planning
- migration hardening order may be treated as fixed for ProjectFlow DB planning
- confirmed constraint hardening may be treated as fixed for ProjectFlow DB planning
- confirmed trigger rollout direction may be treated as fixed for ProjectFlow DB planning
- confirmed RLS direction may be used in later DB-phase planning

partial:
- only explicitly confirmed areas may proceed
- all non-confirmed areas remain blocked
- local notes must distinguish confirmed from still-blocked areas

hold:
- DB-phase planning remains blocked for unresolved areas
- no silent assumption of confirmation is allowed
- only summary cleanup,
  clarification prep,
  and re-review preparation may continue
