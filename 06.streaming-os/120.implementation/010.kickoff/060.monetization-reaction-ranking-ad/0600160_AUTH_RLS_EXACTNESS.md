# ============================================================
# K6 AUTH RLS EXACTNESS
# ============================================================

status: exact-auth-rls
domain: monetization-reaction-ranking-ad
prepared_by: Zero
owner: Boss

monetization_rules:
- tip_events readable by beneficiary-bound owner actors, authorized company actors where owned, platform_operator by support path, runtime/integration where required
- create_tip_event allowed only through canonical path
- raw monetization support tables remain non-public
- auto-tip profile/state tables remain principal-scoped and support/runtime-limited
- arbitrary viewer raw read of monetization events is forbidden

reaction_rules:
- create_reaction_event allowed through canonical viewer/actor path only
- raw reaction event exposure is forbidden publicly
- favorite/principal-scoped state remains self/private by default
- runtime rollup access allowed for reaction/view-signal support objects

ranking_rules:
- ranking_results public read allowed as projection output
- ranking mutation/generation reserved for runtime path
- ranking_generation_batches remain runtime/platform scoped

ad_rules:
- ad candidate list is controlled projection output
- ad display event creation allowed through canonical controlled path only
- ad_data and ad_insertion_rules remain platform/ad-operation scoped
- raw ad targeting and delivery internals are never public

global_principles:
- raw event != public projection
- beneficiary visibility != arbitrary public visibility
- ranking output != ranking generation control
- ad projection != ad control-plane internals
- support-path access must remain explicit and auditable

deny_rules:
- no public raw tip event read
- no public raw reaction event read
- no end-user mutation of ranking results
- no public raw read of ad_data or ad_insertion_rules
- no direct end-user execution of retry / generation / insertion runtime paths

required_resolution_inputs:
- actor identity
- actor class
- ownership relation
- beneficiary relation
- company relation
- support path flag
- runtime/integration execution role

open_for_sql_precision_only:
- exact policy SQL
- exact support-path audit linkage
- exact public projection naming
- exact runtime mutation column set
