# ============================================================
# DISPUTE RESOLUTION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for dispute resolution.

# 2. INTEGRATION SCOPE

- dispute cases to procedure and review consumers
- party/procedure state to adjudication systems
- decisions to enforcement/governance consumers
- dispute audit to operations

# 3. INTEGRATION RULES

- dispute scope and party identity must be explicit before handoff
- decision handoff must preserve case identity
- hidden case closure without decision must not cross boundary
- ambiguous case/procedure state must fail closed

