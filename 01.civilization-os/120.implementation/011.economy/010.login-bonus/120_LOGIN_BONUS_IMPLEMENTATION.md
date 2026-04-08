# ============================================================
# LOGIN BONUS
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for login bonus systems.

# 2. IMPLEMENTATION TARGETS

- campaign handling
- day-rule resolution
- claim-state handling
- reset-rule handling
- audit publication

# 3. DATA / STATE

Canonical structures:
- login_bonus_campaign
- login_bonus_day_rule
- login_bonus_claim_state
- login_bonus_reset_rule

# 4. EXECUTION

- resolve active campaign and day rule
- validate claim state before grant trigger
- execute reset explicitly
- preserve campaign identity through claim progression

# 5. VALIDATION

- reject missing active campaign
- reject duplicate same-day claim
- reject ambiguous reset state

# 6. OBSERVABILITY

- campaign audit
- claim-state audit
- reset visibility

