# ============================================================
# PERSONA OS PRIORITY1 MODEL TARGET MAPPING
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines first-pass target mapping
for Priority 1 old canonical model families.

# ============================================================
# REVIEW COLUMNS
# ============================================================

| old_file | suggested_target_domain | suggested_action | reason |
|---|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800001_knowledge.md | 030.model/040.memory | merge_or_absorb | knowledge_memory_history_family_overlaps_with_memory_domain |
| 030.model/010.canonical/080.knowledge/0300800002_memory.md | 030.model/040.memory | merge_or_absorb | direct_memory_family_match |
| 030.model/010.canonical/080.knowledge/0300800003_experience.md | 030.model/040.memory | merge_or_split | experience_family_likely_belongs_under_memory_with_possible_substructure |
| 030.model/010.canonical/080.knowledge/0300800004_knowledge_graph.md | 030.model/040.memory | merge_or_split | knowledge_family_should_be_reviewed_as_memory_knowledge_submodels |
| 030.model/010.canonical/080.knowledge/0300800005_knowledge_fact.md | 030.model/040.memory | merge_or_split | knowledge_family_should_be_reviewed_as_memory_knowledge_submodels |
| 030.model/010.canonical/080.knowledge/0300800006_knowledge_rule.md | 030.model/040.memory | merge_or_split | knowledge_family_should_be_reviewed_as_memory_knowledge_submodels |
| 030.model/010.canonical/080.knowledge/0300800007_knowledge_source.md | 030.model/040.memory | merge_or_split | knowledge_family_should_be_reviewed_as_memory_knowledge_submodels |
| 030.model/010.canonical/080.knowledge/0300800008_persona_memory.md | 030.model/040.memory | merge_or_absorb | direct_memory_family_match |
| 030.model/010.canonical/080.knowledge/0300800009_persona_event.md | 030.model/040.memory | split_or_reassign | cross_domain_model_likely_overlaps_with_snapshot_state_growth_or_event |
| 030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md | 030.model/040.memory | split_or_reassign | cross_domain_model_likely_overlaps_with_snapshot_state_growth_or_event |
| 030.model/010.canonical/080.knowledge/0300800011_persona_history.md | 030.model/040.memory | split_or_reassign | cross_domain_model_likely_overlaps_with_snapshot_state_growth_or_event |
| 030.model/010.canonical/080.knowledge/0300800012_persona_experience.md | 030.model/040.memory | merge_or_split | experience_family_likely_belongs_under_memory_with_possible_substructure |
| 030.model/010.canonical/080.knowledge/0300800013_persona_growth.md | 030.model/040.memory | split_or_reassign | cross_domain_model_likely_overlaps_with_snapshot_state_growth_or_event |
| 030.model/010.canonical/080.knowledge/0300800014_memory_index.md | 030.model/040.memory | merge_or_absorb | direct_memory_family_match |
| 030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md | 030.model/040.memory | merge_or_absorb | direct_memory_family_match |
| 030.model/010.canonical/080.knowledge/0300800016_memory_decay.md | 030.model/040.memory | merge_or_absorb | direct_memory_family_match |
| 030.model/010.canonical/080.knowledge/0300800017_persona_memory_archive.md | 030.model/040.memory | merge_or_absorb | direct_memory_family_match |
| 030.model/010.canonical/080.knowledge/0300800018_persona_experience_archive.md | 030.model/040.memory | merge_or_split | experience_family_likely_belongs_under_memory_with_possible_substructure |
| 030.model/010.canonical/110.security/0301100001_security_identity.md | 030.model/150.security | merge_or_split | identity_security_boundary_model_needs_review_with_identity_domain |
| 030.model/010.canonical/110.security/0301100002_access_policy.md | 030.model/150.security | merge_or_absorb | clear_security_family_match |
| 030.model/010.canonical/110.security/0301100003_credential.md | 030.model/150.security | merge_or_absorb | clear_security_family_match |
| 030.model/010.canonical/110.security/0301100004_persona_guardrail.md | 030.model/150.security | merge_or_absorb | clear_security_family_match |
| 030.model/010.canonical/110.security/0301100005_behavior_constraint.md | 030.model/150.security | merge_or_absorb | clear_security_family_match |
| 030.model/010.canonical/130.integration/0301300001_persona_event_outbox.md | 030.model/140.integration | merge_or_split | transport_queue_model_needs_review_against_event_contract_and_ops_support |
| 030.model/010.canonical/130.integration/0301300002_persona_sync_event_contract.md | 030.model/140.integration | merge_or_absorb | clear_integration_contract_match |
| 030.model/010.canonical/130.integration/0301300003_persona_growth_request_inbox.md | 030.model/140.integration | merge_or_split | transport_queue_model_needs_review_against_event_contract_and_ops_support |
| 030.model/010.canonical/130.integration/0301300004_persona_growth_result_contract.md | 030.model/140.integration | merge_or_absorb | clear_integration_contract_match |
| 030.model/010.canonical/140.visual/0301400001_visual_avatar.md | 030.model/070.visual | merge_or_absorb | clear_visual_family_match |
| 030.model/010.canonical/140.visual/0301400002_visual_asset.md | 030.model/070.visual | merge_or_absorb | clear_visual_family_match |
| 030.model/010.canonical/140.visual/0301400003_animation_profile.md | 030.model/070.visual | merge_or_absorb | clear_visual_family_match |
| 030.model/010.canonical/140.visual/0301400004_visual_state.md | 030.model/070.visual | merge_or_split | visual_state_may_overlap_with_state_domain_and_visual_domain |
| 030.model/010.canonical/140.visual/0301400005_visual_expression.md | 030.model/070.visual | merge_or_absorb | clear_visual_family_match |

# ============================================================
# ACTION RULE
# ============================================================

- merge_or_absorb: old model meaning should be absorbed into target domain
- merge_or_split: absorb target family but review for substructure/boundary split
- split_or_reassign: model crosses multiple new domains and needs manual split
