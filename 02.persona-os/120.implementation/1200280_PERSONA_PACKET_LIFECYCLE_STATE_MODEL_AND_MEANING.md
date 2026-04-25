# PERSONA PACKET LIFECYCLE STATE MODEL AND MEANING

status: operational-master-ledger
system: PersonaOS
layer: implementation
confirmed_at: 20260419_115009

purpose:
Defines the canonical lifecycle states used in the master ledger.

lifecycle_states:
- active_reference
- bundle_operationalized
- gate_requested
- gate_ready
- gate_promoted_for_discussion_only
- no_code_entry_open
- frozen_reference
- maintenance_only
- superseded_historical_only

state_meanings:
- active_reference
  - currently valid operational reference packet
- bundle_operationalized
  - stable bundle-first packet with defined operational posture
- gate_requested
  - named target under active gate review request
- gate_ready
  - evidence sufficient and no blocker remains
- gate_promoted_for_discussion_only
  - packet may enter no-code implementation-entry discussion only
- no_code_entry_open
  - packet has an active no-code implementation-entry discussion baseline
- frozen_reference
  - packet should be treated as stable and only reopened for explicit need
- maintenance_only
  - packet exists mainly to govern future updates, not packet-local feature reasoning
- superseded_historical_only
  - traceable historical packet not to be used as current baseline

global_transition_rules:
- active_reference may become gate_requested only by explicit target selection
- gate_requested may become gate_ready or gate_blocked
- gate_ready may become gate_promoted_for_discussion_only
- gate_promoted_for_discussion_only may become no_code_entry_open
- no state here authorizes executable work
- any future executable phase requires a separate later authorization layer

hard_rules:
- no silent transition into executable work
- no silent transition into superseded_historical_only
- no packet may carry two conflicting active lifecycle states at once
