# ============================================================
# STATIC ART OS MASTER READONLY SWEEP NOTE
# ============================================================

status: active-readonly-sweep-note
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide a single read-only sweep entry that runs the major
review/health/gate/persona/certification checks and stores the results.

sweep_scope:
- dashboard refresh
- health quick
- pre-implementation gate quick
- persona final recheck quick
- master final certification report
- summary index for the latest sweep run

important_rule:
- This sweep is read-only.
- It does not perform DB writes.
- It is safe for review/confirmation use.
