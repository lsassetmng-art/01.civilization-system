# ============================================================
# PERSONA MEMORY MUTATION FLOW
# ============================================================

status: canonical
layer: flow
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

flow:
1. memory mutation request is received
2. requested memory scope is identified
3. mutation eligibility is checked
4. persistent-memory policy is checked if needed
5. accepted mutation is written
6. memory audit record is produced
