# ============================================================
# PAYMENT
# FLOW
# ============================================================

status: draft
layer: flow
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for payments.

# 2. TRIGGER

- payment request
- payment retry request
- payment completion/failure callback

# 3. MAIN FLOW

1. create or resolve payment_request
2. resolve payment_method_ref
3. validate payer/payee scope and funds path
4. execute payment
5. persist payment_execution or payment_failure
6. emit audit trace

# 4. FAILURE FLOW

- invalid payer/payee scope -> reject
- missing method reference -> reject
- ambiguous execution outcome -> fail closed

# 5. OUTPUT

- payment execution/failure state
- downstream settlement trigger
- audit record

