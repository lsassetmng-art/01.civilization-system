# PERSONA OS FIRST WAVE START SEQUENCE CARD

status: start-sequence-prepared
system: PersonaOS
generated_at: 20260418_052718

implementation_sequence:
1. edge_apply
2. state_apply
3. builder_api
4. builder_storage
5. cross_alignment
6. start_gate

operational_rule:
Proceed in order. Do not skip earlier items. Record any blocker before moving forward.

stop_conditions:
- blocker open
- reviewer decision pending
- alignment unresolved
- authorization not granted
