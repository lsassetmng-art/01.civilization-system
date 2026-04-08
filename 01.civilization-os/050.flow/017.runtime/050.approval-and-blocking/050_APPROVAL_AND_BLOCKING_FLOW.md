# ============================================================
# APPROVAL AND BLOCKING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for runtime approval and blocking.

# 2. TRIGGER

- approval request
- runtime block evaluation
- unblock or override request

# 3. MAIN FLOW

1. create or resolve runtime_approval_request
2. resolve applicable runtime_block_rule
3. create runtime_approval_decision or runtime_block_record
4. validate final execution permission
5. publish approved or blocked state
6. emit audit trace

# 4. FAILURE FLOW

- missing request scope -> reject
- hidden block without record -> reject
- ambiguous approval/block state -> fail closed

# 5. OUTPUT

- approval decision
- block record where applicable
- audit record

