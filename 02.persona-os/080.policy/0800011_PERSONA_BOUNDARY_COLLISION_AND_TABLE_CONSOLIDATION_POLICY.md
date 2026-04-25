# PERSONA BOUNDARY COLLISION AND TABLE CONSOLIDATION POLICY

status: confirmed
system: PersonaOS
layer: policy
confirmed_at: 20260418_072945

purpose:
Defines consolidation and deconfliction policy for overlapping or boundary-unclear tables.

consolidation_rule_1:
growth_core_state is the canonical growth aggregate.
persona_growth_state must be converted into either:
- a read model
- a derived projection
- or be merged and retired.
Dual-canonical operation is forbidden.

consolidation_rule_2:
entitlements should be the canonical grant ledger only for Persona-native rights.
user_entitlement should become:
- a read model
- a compatibility projection
- or a retirement candidate.
Dual-canonical operation is forbidden.

consolidation_rule_3:
products, product_skus, orders, subscription_plans, user_subscription default to BusinessOS canonical.
Inside PersonaOS they must be explicitly marked as mirror unless a future policy says otherwise.

consolidation_rule_4:
persona_state and persona_snapshot must never be merged.
persona_state = mutable truth
persona_snapshot = immutable release artifact

consolidation_rule_5:
memory_state and memory_events remain split by role.
memory_state = current aggregate
memory_events = append-only event log

consolidation_rule_6:
visual_generation_jobs are work or cache state.
visual_assets become canonical only after release-binding to snapshot lineage.

review_required_labels:
Every boundary-sensitive table must be labeled as exactly one of:
- canonical
- mirror
- cache
