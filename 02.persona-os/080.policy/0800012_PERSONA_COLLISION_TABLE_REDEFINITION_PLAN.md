# PERSONA COLLISION TABLE REDEFINITION PLAN

status: confirmed
system: PersonaOS
layer: policy
confirmed_at: 20260418_073938

purpose:
Defines consolidation and deconfliction actions for overlapping Persona-side tables.

collision_1:
- pair: growth_core_state vs persona_growth_state
- canonical_target: growth_core_state
- required_action: convert persona_growth_state into derived projection or retire it
- dual_canonical_allowed: no

collision_2:
- pair: entitlements vs user_entitlement
- canonical_target: entitlements only for Persona-native rights grants
- required_action: convert user_entitlement into read model or retire it
- dual_canonical_allowed: no

collision_3:
- pair: persona_state vs persona_snapshot
- canonical_target: both remain but by different role
- required_action: preserve separation
- meaning:
  - persona_state = mutable truth
  - persona_snapshot = immutable release artifact

collision_4:
- pair: visual_generation_jobs vs visual_assets
- canonical_target:
  - visual_generation_jobs = work state
  - visual_assets = canonical only after release-binding
- required_action: add promotion rule from work output to release artifact

collision_5:
- pair: products / orders / subscriptions inside PersonaOS
- canonical_target: BusinessOS by default
- required_action: mark PersonaOS copies as mirror unless future policy explicitly reassigns ownership

decision_rule:
Every overlapping table pair must end in one of:
- canonical + projection
- canonical + mirror
- work state + release artifact
Never canonical + canonical.

