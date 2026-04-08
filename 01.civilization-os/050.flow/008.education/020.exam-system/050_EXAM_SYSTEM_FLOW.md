# ============================================================
# EXAM SYSTEM
# FLOW
# ============================================================

status: draft
layer: flow
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for exam system handling.

# 2. TRIGGER

- exam creation/update
- session scheduling
- exam attempt
- result publication

# 3. MAIN FLOW

1. create or resolve exam_definition
2. create or resolve exam_session
3. create exam_attempt
4. validate attempt and scoring conditions
5. persist exam_result
6. emit audit trace

# 4. FAILURE FLOW

- missing exam scope -> reject
- invalid session or attempt binding -> reject
- hidden result mutation -> fail closed

# 5. OUTPUT

- exam/session state
- attempt/result state
- audit record

