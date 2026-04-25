# PERSONA PACKET ADVANCEMENT QUEUE AND MAINTENANCE PRIORITY

status: operational-master-ledger
system: PersonaOS
layer: implementation
confirmed_at: 20260419_115009

purpose:
Defines what should be worked on next and in what order.

priority_queue_kinds:
- queue_a_active_no_code_refinement
- queue_b_bundle_reference_maintenance
- queue_c_control_plane_maintenance
- queue_d_future_gate_candidates

queue_a_active_no_code_refinement:
1. persona-state-apply
2. snapshot-issue
3. snapshot-verify
4. publish_apply
5. civilization-event-dispatcher

queue_b_bundle_reference_maintenance:
1. release_surface
2. trust_support
3. snapshot_downstream
4. civilization_support
5. visual_asset_support
6. lifecycle

queue_c_control_plane_maintenance:
1. atlas
2. registry_and_routing
3. maintenance_ops
4. implementation_entry_gate

queue_d_future_gate_candidates:
1. trust_support only if signing/key relation becomes active priority
2. snapshot_downstream only if revoke/publication becomes active priority
3. visual_asset_support only if one visual or asset support function becomes active priority
4. civilization_support only if non-dispatch sibling relation becomes active priority
5. lifecycle only if create or history becomes active priority

priority_rule:
Finish queue_a packet-local no-code refinement before promoting new bundles unless project priority forces a deviation.

hard_rule:
Do not open multiple queue_a packets at once by default.
