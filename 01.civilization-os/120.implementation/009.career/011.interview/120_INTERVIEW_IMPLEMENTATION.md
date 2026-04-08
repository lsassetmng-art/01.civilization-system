# ============================================================
# INTERVIEW
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for interview structures.

# 2. IMPLEMENTATION TARGETS

- interview-session handling
- stage/participant handling
- result publication
- audit publication

# 3. DATA / STATE

Canonical structures:
- interview_session
- interview_stage
- interview_participant
- interview_result

# 4. EXECUTION

- resolve explicit session scope and participant identity
- persist stage progression before result publication
- publish one explicit result per finalized session
- reject hidden interview-result mutation path

# 5. VALIDATION

- reject missing session scope
- reject invalid stage or participant binding
- reject hidden interview-result mutation

# 6. OBSERVABILITY

- interview audit
- stage/participant visibility
- result visibility

