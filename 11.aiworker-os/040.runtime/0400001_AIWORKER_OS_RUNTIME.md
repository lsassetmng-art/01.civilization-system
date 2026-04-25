# ============================================================
# AIWORKER OS RUNTIME
# ============================================================

status: canonical
system: AiworkerOS
layer: 040.runtime
owner: Boss
prepared_by: Zero

runtime_formula:
effective_behavior =
rank x domain x role x lane x app_scope x allowed_view_family
x output_policy x write_surface x gate x mode x company_style_profile

runtime_lanes:
- advisory lane
- embedded help lane
- execution lane
- control lane
- restricted lane

read_runtime_rule:
AI workers obtain runtime context from cx22073jw safe view families only.

write_runtime_rule:
AI workers do not directly write canonical raw tables.
Writes must go through:
- command row
- draft row
- staging row
- official intake table
- controlled function

guard_rule:
Even high-rank workers remain bound by gate, approval, and audit rules.

final_rule:
Runtime intelligence is shaped by controlled context,
not by unrestricted raw database reach.
