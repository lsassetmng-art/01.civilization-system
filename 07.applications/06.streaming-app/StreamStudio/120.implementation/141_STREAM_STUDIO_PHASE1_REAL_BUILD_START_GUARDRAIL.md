# ============================================================
# STREAM STUDIO PHASE 1 REAL BUILD START GUARDRAIL
# ============================================================

status: guardrail
layer: implementation-guardrail
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines non-negotiable guardrails before real Phase 1 build starts.

guardrails:
- do not rename frozen enum values during implementation
- do not merge publish and listing logic in Phase 1
- do not silently skip audit event writing
- do not bypass optimistic locking on mutable records
- do not hide approval and rights blockers under one generic error
- do not postpone runtime job visibility until later phase
- do not introduce marketplace or membership logic into Phase 1 endpoints
- do not collapse asset and publish state into one table without mapping discipline
- do not use localized UI text as canonical backend values

required_before_build:
- exact docs read
- ledgers read
- permission matrix read
- db mapping memo read
- runtime exact doc read
- test matrix accepted

stop_conditions:
- API contract drift detected
- enum drift detected
- blocker collapse detected
- audit omission detected
- runtime job omission detected

fixed_statement:
Phase 1 build may begin only under frozen-contract discipline.
