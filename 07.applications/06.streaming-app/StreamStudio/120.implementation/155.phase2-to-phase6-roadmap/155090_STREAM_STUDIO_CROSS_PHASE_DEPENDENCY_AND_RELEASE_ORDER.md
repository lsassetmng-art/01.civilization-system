# ============================================================
# STREAM STUDIO CROSS PHASE DEPENDENCY AND RELEASE ORDER
# ============================================================

status: roadmap-freeze
layer: implementation-roadmap
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines cross-phase dependencies and release order after Phase 1.

cross_phase_dependencies:
- phase 2 depends on phase 1
- phase 3 depends on stable phase 2 approval path
- phase 4 depends on stable phase 3 access mode and commerce model
- phase 5 depends on stable phase 3 monetization model and phase 4 conflict rules
- phase 6 depends on stable internal publish and runtime operations from earlier phases

release_order:
- release_phase_1_internal_creator_base
- release_phase_2_internal_workflow_governance
- release_phase_3_marketplace_and_paid_video
- release_phase_4_membership
- release_phase_5_split_and_settlement_visibility
- release_phase_6_external_push_and_ops_hardening

do_not_reverse_rules:
- do not ship membership before marketplace / paid access model is stable
- do not ship full external push before internal publish and dead-letter visibility are stable
- do not ship advanced split execution before monetized source models are stable

fixed_statement:
The cross-phase dependency and release order above is frozen for roadmap planning.
