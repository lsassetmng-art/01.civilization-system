# ============================================================
# GLOBAL RULES
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for global rule resolution.

# 2. INTEGRATION SCOPE

- global rule registry to runtime resolver
- exception approval state to rule application
- application result to domain execution boundary
- rule audit to operations

# 3. INTEGRATION RULES

- rule resolver must consume explicit effective version
- exception path must carry approval provenance
- local domain execution must receive explicit allow/reject result
- application audit must preserve target scope

