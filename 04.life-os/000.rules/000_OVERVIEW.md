# ============================================================
# LIFE OS RULES OVERVIEW
# ============================================================

status: canonical
layer: 000.rules
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define Life OS local rules that apply only inside Life OS.

scope:
- life-os internal conventions
- local naming alignment
- local document handling rules

non_goals:
- civilization-system global rules
- cross-os shared rules

rule_position:
Global rules under 91.rules take precedence.
Life OS local rules must not conflict with shared canonical rules.
