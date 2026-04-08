# ============================================================
# CRIMINAL PROCEDURE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for criminal procedure.

# 2. INFRASTRUCTURE SCOPE

- criminal-case storage
- charge/stage persistence
- judgment storage
- criminal-procedure audit sink

# 3. INFRASTRUCTURE RULES

- jurisdiction scope and charge identity must be durably resolvable
- stage history must persist before judgment publication
- criminal-case identity must remain durable across progression
- infrastructure ambiguity must fail closed

