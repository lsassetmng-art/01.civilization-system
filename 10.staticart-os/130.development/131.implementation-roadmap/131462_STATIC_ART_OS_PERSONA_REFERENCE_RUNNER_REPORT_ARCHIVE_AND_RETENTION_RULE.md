# ============================================================
# STATIC ART OS PERSONA REFERENCE RUNNER REPORT ARCHIVE AND RETENTION RULE
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define report/archive retention expectations for actual runner activity.

core_rule:
- retain enough runner reports to explain filesystem/control-plane changes over time
- report retention must not replace canonical runner source
- archive must preserve auditability without creating confusing duplicates

retain_for_runner_activity:
- initialization dry-run report
- initialization apply report
- refresh dry-run report
- refresh apply report
- consistency audit report
- anomaly notes
- runner invocation checklist snapshots if needed for review context

archive_rules:
- keep reports timestamped
- do not overwrite prior run reports silently
- keep current approved runner source separate from older runner report outputs
- reports may be grouped by runner type and timestamp
- archive may retain only references to obsolete runner versions if source is preserved elsewhere

recommended_report_root_structure:
- 920.meta/116.persona_reference_runner_reports/initialization
- 920.meta/116.persona_reference_runner_reports/refresh
- 920.meta/116.persona_reference_runner_reports/audit

retention_safety_rule:
- reports must not imply execution success where apply did not happen
- report retention must not blur dry_run and apply outcomes
- report retention must not store forbidden Persona truth because runners are filesystem/control-plane only

retention_judgement:
- runner report retention exists for operator accountability and change traceability
