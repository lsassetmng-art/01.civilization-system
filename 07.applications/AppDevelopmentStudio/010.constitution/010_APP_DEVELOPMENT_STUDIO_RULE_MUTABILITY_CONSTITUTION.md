# ============================================================
# RULE MUTABILITY CONSTITUTION
# ============================================================

status: canonical-draft
layer: constitution
system: applications
application: App Development Studio

purpose:
Defines the constitutional position of mutable rules.

principle:
Rules are first-class and mutable.

default_position:
The application ships with default rules,
but default rules are not constitutionally fixed forever.

rule_categories:
- design rules
- development rules
- test rules
- release rules
- git operation rules
- build rules
- review rules
- approval rules
- multilingual output rules
- safety escalation rules

allowed_rule_operations:
- add
- update
- disable
- version
- assign
- inherit
- override by scope

assignment_scopes:
- system default
- user
- project
- environment
- language
- artifact type
- execution context

constitutional_constraints:
- mutation must be traceable
- mutation must be versionable
- mutation should preserve clarity
- mutation should not become silent ambiguity
- mutation may affect generation outcomes
- mutation may require compatibility warning

summary:
App Development Studio is not a fixed-rule tool.
It is a rule-configurable tool whose rule system itself
is part of the designed product.
