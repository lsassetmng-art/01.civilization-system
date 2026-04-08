# ============================================================
# CONSULTATION SCOPE COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines normalized consultation scope categories.

common scopes:
- personal
- business_document
- business_strategy
- business_problem_solving
- business_workflow

meaning:
personal:
Personal life, schedule, todo, organization, and daily support.

business_document:
Proposal/document creation support, structure, missing information,
and draft preparation support.

business_strategy:
Framework suggestion, strategic tools, comparison axes,
and business thinking support.

business_problem_solving:
Problem clarification, constraint identification,
and issue-solving proposal support.

business_workflow:
Next-step suggestion, role handoff, process order,
and practical work progression support.

rules:
- consultation scope classifies support intent
- consultation scope does not create approval authority
