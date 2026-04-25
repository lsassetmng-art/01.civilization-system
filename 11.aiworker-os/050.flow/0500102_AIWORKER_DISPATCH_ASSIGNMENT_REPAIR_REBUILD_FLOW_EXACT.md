# ============================================================
# AIWORKER DISPATCH ASSIGNMENT REPAIR REBUILD FLOW EXACT
# ============================================================

status: exact-flow
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
Freeze the worker-side lifecycle flow from dispatch to recovery.

dispatch_lifecycle:
1. business creates dispatch request truth
2. aiworker evaluates worker eligibility
3. reservation state created
4. assignment state applied
5. active execution state begins
6. result summary prepared
7. cooldown or next queue placement applied

repair_rebuild_path:
- issue detected
- restriction or incident context attached
- worker enters REPAIR or REBUILD
- controlled review determines next state
- worker returns to AVAILABLE or becomes SUSPENDED or RETIRED

hard_rule:
Repair and rebuild state transitions are aiworker truth, not business truth.
