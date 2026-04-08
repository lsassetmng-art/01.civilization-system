# ============================================================
# ELECTION AND POWER ACQUISITION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for elections and power acquisition.

# 2. OPERATIONAL CONTROLS

- election-state review
- candidate registration review
- vote-result inspection
- power-transfer audit inspection

# 3. FAILURE OPERATIONS

- invalid candidate registration -> reject
- ambiguous vote result -> block
- hidden power transfer without record -> fail closed

