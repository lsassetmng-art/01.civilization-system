# ============================================================
# PROJECT FLOW REMAINING ITEM STOPLINE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines where ordinary implementation planning should stop
when remaining items are encountered.

policy_rules:
- DB-owner-review required items must not be guessed locally
- later sophistication items must not be pulled forward unless phase-critical
- non-blocking cleanup items must not delay ordinary planning
- ordinary implementation planning may proceed using current fixed design
  as long as DB-owner-review items are treated as explicit boundary items
