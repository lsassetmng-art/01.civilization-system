# ============================================================
# DEPENDENCY GRAPH
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for dependency graph control.

# 2. POLICY RULES

- every active dependency edge must be declared
- reverse dependency is prohibited
- read-only exception must be explicitly marked
- prohibited edge must block execution before mutation

# 3. FAILURE RULE

- undeclared edge must reject
- reverse edge must reject
- ambiguous graph state must reject

