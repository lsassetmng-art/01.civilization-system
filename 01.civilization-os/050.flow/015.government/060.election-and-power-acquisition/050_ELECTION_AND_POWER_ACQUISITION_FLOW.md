# ============================================================
# ELECTION AND POWER ACQUISITION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for elections and power acquisition.

# 2. TRIGGER

- election opening
- candidate registration
- vote tally completion
- power transfer execution

# 3. MAIN FLOW

1. create or resolve election
2. register and validate candidates
3. finalize vote_result
4. create power_transfer_record
5. update authority/term state
6. emit audit trace

# 4. FAILURE FLOW

- invalid candidate registration -> reject
- ambiguous vote result -> reject
- hidden power transfer without record -> fail closed

# 5. OUTPUT

- election/result state
- transfer state
- authority update audit

