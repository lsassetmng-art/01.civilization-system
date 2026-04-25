# ============================================================
# STATIC ART OS EXECUTION EVIDENCE CAPTURE NOTE
# ============================================================

status: note
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Explain what should be kept after actual execution begins.

keep_after_each_run:
- command list
- return codes
- output logs
- blocker notes
- warning notes
- updated completion/signoff memo if applicable

minimum_evidence_paths:
- execution session log
- post-run summary
- relevant run logs under 920.meta
- updated blocker/risk register if needed

important_rule:
- Evidence should be additive.
- Do not replace canonical design files with ad-hoc run notes.
- Keep Persona boundary confirmation visible in execution evidence.
