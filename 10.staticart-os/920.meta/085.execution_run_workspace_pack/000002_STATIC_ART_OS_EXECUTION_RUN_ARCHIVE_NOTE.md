# ============================================================
# STATIC ART OS EXECUTION RUN ARCHIVE NOTE
# ============================================================

status: execution-run-archive-note
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

archive_rule:
- keep each execution run as a separate historical record
- do not overwrite earlier run evidence
- prefer new timestamped runs over mutating old run folders
- if a run fails, keep the failed evidence as-is
- if a run succeeds later, keep both failed and successful runs

minimum_keep_set:
- session log
- post-run summary
- blockers/warnings notes if applicable
- raw logs if commands were executed
- Persona boundary confirmation note if Persona-linked work was touched
