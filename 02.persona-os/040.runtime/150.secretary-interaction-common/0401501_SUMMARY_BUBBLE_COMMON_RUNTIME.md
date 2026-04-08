# ============================================================
# SUMMARY BUBBLE COMMON RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common runtime behavior for summary bubble selection.

runtime sequence:
1. candidate summary sources are collected
2. urgency and relevance are evaluated
3. one dominant summary is selected
4. summary bubble content is rendered
5. optional tap routes to related surface

rules:
- dominant summary selection must remain state-grounded
- summary output must not fabricate urgency or authority
