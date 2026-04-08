# ============================================================
# CRIMINAL PROCEDURE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for criminal procedure.

# 2. RUNTIME STATE

- active criminal-case state
- charge/stage resolution state
- procedural progression state
- judgment publication state

# 3. EXECUTION RULES

- jurisdiction scope must resolve before criminal progression
- charge and stage identity must be explicit before judgment publication
- hidden procedural mutation without stage record is prohibited
- invalid charge/stage binding must block progression

# 4. FAILURE HANDLING

- missing jurisdiction scope -> reject
- invalid charge/stage binding -> reject
- hidden procedural mutation without stage record -> fail closed

