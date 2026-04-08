# ============================================================
# CRIMINAL PROCEDURE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for criminal procedure.

# 2. INTEGRATION SCOPE

- criminal cases to procedural and enforcement consumers
- charge/stage state to prosecution/judicial systems
- judgment state to enforcement and review consumers
- criminal-procedure audit to operations

# 3. INTEGRATION RULES

- jurisdiction scope, charge identity, and stage state must be explicit before handoff
- judgment handoff must preserve case identity
- hidden procedural mutation without stage record must not cross boundary
- ambiguous procedural state must fail closed

