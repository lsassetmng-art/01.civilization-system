# ============================================================
# CAREER PROGRESSION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for career progression handling.

# 2. TRIGGER

- progression record opening
- progression event update
- progression state/result publication

# 3. MAIN FLOW

1. create or resolve career_progression_record
2. bind progression_event set
3. update progression_state
4. validate subject scope and attributable level change
5. persist progression_result
6. emit audit trace

# 4. FAILURE FLOW

- missing subject or progression scope -> reject
- invalid event or state binding -> reject
- hidden progression mutation -> fail closed

# 5. OUTPUT

- progression record state
- event/state/result state
- audit record

