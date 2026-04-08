# ============================================================
# PERSONA LICENSE ACCESS TRANSFER FLOW
# ============================================================

status: canonical
layer: flow
domain: access-license-transfer
system: persona-os
owner: Boss
prepared_by: Zero

flow:
1. license issuance request is validated
2. access grant may be created from active license
3. transfer request is checked against policy
4. accepted transfer is recorded
5. resulting authority state is updated
