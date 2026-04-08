# ============================================================
# APPROVAL AND BLOCKING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for approval and blocking.

# 2. IMPLEMENTATION TARGETS

- request handling
- decision and block-rule handling
- outcome publication
- execution-permission handoff
- audit publication

# 3. DATA / STATE

Canonical structures:
- runtime_approval_request
- runtime_approval_decision
- runtime_block_rule
- runtime_block_record

# 4. EXECUTION

- resolve explicit request scope before approval or block decision
- persist block record before blocked publication
- publish only one explicit approval/block outcome
- reject hidden block path

# 5. VALIDATION

- reject missing request scope
- reject hidden block without record
- reject ambiguous approval/block state

# 6. OBSERVABILITY

- approval/block audit
- request/rule visibility
- outcome visibility

