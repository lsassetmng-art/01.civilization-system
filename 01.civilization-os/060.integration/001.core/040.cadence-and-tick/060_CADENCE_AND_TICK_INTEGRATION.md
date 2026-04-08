# ============================================================
# CADENCE AND TICK
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for cadence and tick control.

# 2. INTEGRATION SCOPE

- cadence profile to runtime scheduler
- tick rule set to actor execution order
- speed family authorization to control gate
- catchup result to checkpoint and audit

# 3. INTEGRATION RULES

- scheduler must consume explicit cadence profile
- execution order handoff must be deterministic
- speed family handoff requires authorization state
- catchup result must preserve truth-compatible checkpoint state

