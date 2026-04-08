# ============================================================
# POLITICAL SYSTEM
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for political system law.

# 2. INTEGRATION SCOPE

- political-system definition to government consumers
- office structures to election/governance systems
- power-source rules to authority/constitution consumers
- political-system audit to operations

# 3. INTEGRATION RULES

- jurisdiction scope and active system identity must be explicit before handoff
- office and power-source rule handoff must preserve system version
- ambiguous active political system must not cross boundary
- rejected system changes must preserve audit evidence

