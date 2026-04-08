# ============================================================
# INTERVIEW
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for interview handling.

# 2. TRIGGER

- interview scheduling request
- interview stage update
- interview result publication

# 3. MAIN FLOW

1. create or resolve interview_session
2. bind interview_stage set
3. bind interview_participant set
4. validate session and participant scope
5. persist interview_result
6. emit audit trace

# 4. FAILURE FLOW

- missing session scope -> reject
- invalid stage or participant binding -> reject
- hidden interview-result mutation -> fail closed

# 5. OUTPUT

- interview state
- stage/participant/result state
- audit record

