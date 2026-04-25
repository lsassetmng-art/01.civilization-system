# ============================================================
# STATIC ART OS EXECUTION RUN WORKSPACE POLICY
# ============================================================

status: execution-run-workspace-policy
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define how each actual execution run should get its own workspace
under 920.meta so logs and summaries stay organized.

workspace_rule:
- one execution run = one timestamped run directory
- do not mix multiple run sessions into a single ad-hoc folder
- keep logs, blockers, warnings, and summaries together
- keep evidence additive
- keep Persona boundary confirmation visible in each run

recommended_contents_per_run:
- run README
- raw command log
- session log
- post-run summary
- blockers note
- warnings note
- optional extra logs

naming_rule:
- use timestamped run directory under 920.meta/085.execution_runs
- keep filenames stable and predictable inside each run directory

important_rule:
- this workspace policy is for execution evidence only
- it does not replace canonical design files
