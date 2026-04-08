# ============================================================
# 070 AERIAL SUPPORT GOVERNOR
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the infrastructure receiver for 070 AERIAL SUPPORT GOVERNOR.

# 2. INFRASTRUCTURE SCOPE

- deployment/runtime hosting concern where applicable
- service boundary
- operational dependency
- resilience and failover concern

# 3. INFRASTRUCTURE RULES

- explicit environment boundary
- explicit dependency declaration
- fail closed on invalid infrastructure state
- operator-visible failure and recovery path
