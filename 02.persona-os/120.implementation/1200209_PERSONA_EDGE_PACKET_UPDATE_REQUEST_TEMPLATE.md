# PERSONA EDGE PACKET UPDATE REQUEST TEMPLATE

status: maintenance-ops-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_071627

purpose:
Provides the standard request template for updating any PersonaOS edge packet.

request_template:
- target_packet:
- target_function_or_bundle:
- reason_for_update:
- contradiction_present:
- contradiction_description:
- expected_output_docs:
- scope_level:
  - single_function
  - bundle
  - atlas
- change_type:
  - wording_only
  - field_schema_adjustment
  - boundary_adjustment
  - packet_membership_adjustment
  - safety_rule_adjustment
- affected_external_surface:
  - yes_or_no
- affected_truth_ownership:
  - yes_or_no
- affected_packet_relation:
  - yes_or_no

request_rules:
- every update request must name one target packet first
- contradiction_present must be explicit
- expected_output_docs must be explicit before editing starts
- scope_level must be the smallest level that can fully solve the request
- broad redesign is forbidden unless contradiction_present = yes and the contradiction is described

hard_rules:
- no packet update begins from "change everything"
- no packet update begins without naming the target packet
- no packet update begins by skipping scope declaration
