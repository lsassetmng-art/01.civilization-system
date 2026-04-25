# ============================================================
# STREAM STUDIO PHASE 1 SCOPE BOUNDARY FINAL MEMO
# ============================================================

status: boundary-memo
layer: implementation-boundary
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the final Phase 1 in-scope / out-of-scope boundary.

phase_1_in_scope:
- project create / update / detail
- upload session create
- upload status read
- upload complete
- upload retry
- video draft create
- metadata update
- thumbnail assignment
- subtitle track create
- trim / cut marker upsert
- publish setting upsert
- publish readiness validation
- publish request create
- publish schedule create
- publish history read
- runtime job registration for phase 1 job types
- dead-letter visibility base
- audit event persistence

phase_1_out_of_scope:
- marketplace listing draft execution
- paid offer execution
- membership program execution
- tier / benefit / membership rule execution
- split draft / negotiation / activation execution
- settlement reference execution
- external push dispatch execution
- connector audit browsing surface
- advanced review workflow execution beyond minimum already designed

boundary_rules:
- out-of-scope domains may remain referenced in design only
- out-of-scope domains may not enter phase 1 sql
- out-of-scope domains may not enter phase 1 endpoint implementation list
- out-of-scope domains may not appear in phase 1 done definition

fixed_statement:
Phase 1 boundary is frozen and excludes commerce, membership,
split, settlement, and full connector execution scope.
