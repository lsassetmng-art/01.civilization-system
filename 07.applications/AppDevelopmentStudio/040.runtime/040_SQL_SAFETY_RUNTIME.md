# ============================================================
# SQL SAFETY RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime classification and gating for SQL execution.

runtime_steps:
1. inspect generated SQL
2. classify SQL safety class
3. resolve connection suitability
4. resolve review/approval requirements
5. resolve backup requirement
6. allow, guard, or block execution
