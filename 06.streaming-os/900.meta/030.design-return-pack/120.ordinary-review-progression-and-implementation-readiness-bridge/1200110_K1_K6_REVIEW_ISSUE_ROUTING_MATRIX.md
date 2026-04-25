# ============================================================
# K1 K6 REVIEW ISSUE ROUTING MATRIX
# ============================================================

status: canonical-matrix
layer: meta
domain: ordinary-review-progression-and-implementation-readiness-bridge
system: StreamingOS
prepared_by: Zero
owner: Boss

routing_matrix:

issue_type_01_exactness_precision:
- route_to:
  - ordinary review refinement
- examples:
  - payload naming ambiguity
  - table/column precision ambiguity
  - auth / flow wording ambiguity

issue_type_02_persona_boundary_contradiction:
- route_to:
  - targeted correction only
- examples:
  - local persona canonical implication
  - direct mutation implication
  - signed snapshot rule violation

issue_type_03_ddl_reading_gap:
- route_to:
  - ddl reconnect refinement
- examples:
  - column meaning not explicit enough
  - request/result reading not explicit enough

issue_type_04_approval_decision_gap:
- route_to:
  - approval decision refinement
- examples:
  - packet closure ambiguity
  - blocking/non-blocking distinction ambiguity

issue_type_05_implementation_ready_gap:
- route_to:
  - implementation-ready boundary refinement
- examples:
  - unresolved cross-domain dependency
  - freeze entry ambiguity

routing_rule:
Do not treat all issues as persona-boundary issues.
Only true contradiction goes back to targeted boundary correction.
