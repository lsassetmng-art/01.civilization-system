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

# EXACT READY ARCHITECTURE REINFORCEMENT

status_extension: author-reviewed-with-architecture-reinforcement
reinforced_at: 20260417_150617
reinforcement_scope:
- component boundary clarification
- flow boundary clarification
- persistence edge clarification
- failure path clarification

domain: generic

minimum_architecture_requirements:
- define entry component
- define coordination or orchestration component
- define persistence or state boundary
- define outbound interface or integration boundary
- define reject, retry, and terminal failure path where applicable

mandatory_flow_requirements:
- happy path
- reject or block path
- retry or recovery path where applicable
- dead-letter or terminal failure path where applicable

mandatory_boundary_requirements:
- no hidden write path
- no shortcut around validation or policy
- no silent external effect
- no terminal action without observable evidence

architecture_ready_note:
This reinforcement does not replace the authored architectural content above.
It marks the minimum exact-ready architectural items that must be explicit
before implementation contract fixation is considered complete.
