# ============================================================
# PROJECT FLOW FORM MEMO COMMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines architecture for form intake,
project-linked memo,
and short comment history.

functional_domains:
- form intake
- memo and meeting note
- short comment history

form_intake_architecture:
Structured forms provide lightweight entry paths for:
- task creation
- issue registration
- progress report request

memo_architecture:
Project-linked memo supports:
- general note
- meeting note
- decision note

comment_architecture:
Short comment history supports:
- task-linked comments
- issue-linked comments
- risk-linked comments
- project-linked comments
- milestone-linked comments

boundary_rules:
- forms are simplified entry points, not separate source-of-truth layers
- memos preserve operational context and meeting trace
- comments remain lightweight and should not become heavy chat replacement
- comment and memo ownership remains tied to project context
