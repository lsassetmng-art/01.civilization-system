# ============================================================
# PURCHASE AND ENTITLEMENT FLOW
# ============================================================

flow:
1. player opens store
2. catalog resolves by locale/channel/currency
3. player selects product
4. billing handoff executes
5. purchase order is recorded
6. entitlement state is updated
7. reward/benefit is claimed or activated
8. audit and receipt history are persisted

reject_cases:
- channel mismatch
- duplicate transaction id
- revoked entitlement reuse
- catalog expired
