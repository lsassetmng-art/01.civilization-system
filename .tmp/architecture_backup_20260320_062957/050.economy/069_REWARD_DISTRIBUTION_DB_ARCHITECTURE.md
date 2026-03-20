# ============================================================
# REWARD DISTRIBUTION DB ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# DEFINITION
# ============================================================

All reward distribution must be controlled by database.

# ============================================================
# COMPONENTS
# ============================================================

reward_master
reward_condition
reward_event
reward_claim_log

# ============================================================
# RULE
# ============================================================

- no hardcoded rewards
- all conditions must be data-driven
- all claims must be logged

# ============================================================
# FLOW
# ============================================================

login or trigger
→ check condition
→ grant reward
→ log claim

# ============================================================
# PURPOSE
# ============================================================

- flexibility
- auditability
- security
- scalability

