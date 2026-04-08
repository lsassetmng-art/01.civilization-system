# ============================================================
# DISPUTE RESOLUTION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for dispute resolution.

# 2. RUNTIME STATE

- active dispute-case state
- party/procedure resolution state
- case-progression state
- decision publication state

# 3. EXECUTION RULES

- dispute scope and party identity must resolve before case progression
- procedure stage must be explicit before decision publication
- hidden case closure without decision state is prohibited
- invalid party/procedure binding must block progression

# 4. FAILURE HANDLING

- missing dispute scope -> reject
- invalid party/procedure binding -> reject
- hidden case closure without decision state -> fail closed

