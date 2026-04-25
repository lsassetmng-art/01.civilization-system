# ============================================================
# STREAM STUDIO PHASE1 FROZEN DECISION REGISTER
# ============================================================

status: decision-register
layer: implementation-decision
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Collects the frozen decisions specific to Phase 1.

phase1_scope_decisions:
- project base is included
- upload base is included
- video draft base is included
- metadata editing base is included
- thumbnail assignment base is included
- subtitle base is included
- edit marker base is included
- publish setting base is included
- publish readiness base is included
- publish request base is included
- scheduled publish base is included
- audit and runtime base are included

phase1_exclusion_decisions:
- marketplace execution is excluded
- membership execution is excluded
- split execution is excluded
- settlement execution is excluded
- external push execution is excluded

phase1_sql_decisions:
- migration-unit split is required
- audit and runtime tables are included in phase 1 SQL design
- PERSONA_DATABASE_URL is the intended DB target for StreamStudio-side DB work
- Method A is the required SQL output style when real SQL is produced later

phase1_gate_decisions:
- blocker categories must stay distinct
- optimistic locking is required where already frozen
- audit omission is not allowed
- runtime invisibility is not allowed

fixed_statement:
These are the frozen Phase 1 decisions and should be treated as non-negotiable
unless Phase 1 itself is explicitly redesigned.
