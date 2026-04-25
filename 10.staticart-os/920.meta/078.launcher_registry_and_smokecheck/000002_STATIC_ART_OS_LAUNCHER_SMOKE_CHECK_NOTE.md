# ============================================================
# STATIC ART OS LAUNCHER SMOKE CHECK NOTE
# ============================================================

status: smoke-check-note
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the read-only smoke-check policy for the launcher set.

smoke_check_policy:
- check file existence first
- use help/short/paths/report modes when possible
- avoid DB writes
- allow dashboard refresh because it is read-only
- allow readonly sweep because it is read-only
- prefer command return code logging over interactive review

expected_success:
- file existence is OK
- help/short/report style commands return rc 0
- environment-dependent launchers may require PERSONA_DATABASE_URL

important_rule:
- smoke check is for launcher sanity, not implementation success
- non-zero rc should be reviewed, not silently ignored
