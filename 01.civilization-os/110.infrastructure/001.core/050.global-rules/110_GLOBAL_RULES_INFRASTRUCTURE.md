# ============================================================
# GLOBAL RULES
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for global rule administration.

# 2. INFRASTRUCTURE SCOPE

- rule registry storage
- version resolution path
- exception approval storage
- application audit sink

# 3. INFRASTRUCTURE RULES

- effective version resolution must be deterministic
- exception approval storage must preserve provenance
- application audit sink must be durable
- registry inconsistency must fail closed

