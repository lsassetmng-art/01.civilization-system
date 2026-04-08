# ============================================================
# LICENSE AND BOUNDARY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for license and boundary control.

# 2. TRIGGER

- license issuance/update
- access grant request
- transfer request
- boundary validation request

# 3. MAIN FLOW

1. resolve persona and current license state
2. validate requested boundary/action scope
3. resolve applicable access_grant or transfer_rule
4. persist license/boundary decision
5. emit audit trace

# 4. FAILURE FLOW

- missing valid license -> reject
- missing grant/rule for boundary crossing -> reject
- ambiguous validity window -> fail closed

# 5. OUTPUT

- license state
- access/transfer decision
- audit record

