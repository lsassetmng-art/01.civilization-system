# ============================================================
# CADENCE AND TICK
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for cadence and tick runtime control.

# 2. OPERATIONAL CONTROLS

- cadence profile review
- speed family change review
- catchup mode monitoring
- execution window collision monitoring

# 3. FAILURE OPERATIONS

- unauthorized speed change -> reject
- unsafe catchup -> halt and review
- incompatible execution windows -> block
- cadence profile ambiguity -> fail closed

