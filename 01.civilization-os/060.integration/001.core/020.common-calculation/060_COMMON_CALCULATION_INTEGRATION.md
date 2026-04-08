# ============================================================
# COMMON CALCULATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for shared calculation services.

# 2. INTEGRATION SCOPE

- formula registry to runtime execution
- parameter provider to calculation context
- calculation result to requesting domain
- calculation audit to operations

# 3. INTEGRATION RULES

- formula version must be fixed before execution handoff
- parameter providers must declare source scope
- result publication must not occur on failed calculation
- requesting domain must receive explicit rejection on invalid context

