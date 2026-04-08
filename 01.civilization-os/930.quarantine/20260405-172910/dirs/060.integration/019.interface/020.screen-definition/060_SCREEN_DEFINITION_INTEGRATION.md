# ============================================================
# SCREEN DEFINITION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for screen definition structures.

# 2. INTEGRATION SCOPE

- screen definitions to navigation and presentation consumers
- sections and screen rules to runtime and rendering consumers
- screen-definition audit to operations

# 3. INTEGRATION RULES

- screen scope, sections, and rules must be explicit before handoff
- revised screen handoff must preserve screen identity
- hidden screen mutation must not cross boundary
- ambiguous screen state must fail closed

