# ============================================================
# 004 / 005 / 006 / 012 CONTENT DENSITY CHECK (CORE ONLY)
# ============================================================

status: canonical-review
type: content-density-check
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Checks only body files for the target domains,
excluding navigation, overview, and layer-summary files.

targets:
- 004.mode
- 005.story
- 006.player
- 012.integration

layers:
- 020.architecture
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development

excluded_files:
- *_INDEX.md
- *_OVERVIEW.md
- 040_*.md
- 050_*.md
- 060_*.md
- 070_*.md
- 080_*.md
- 100_*.md
- 110_*.md
- 120_*.md
- 130_*.md

check_method:
This is a heuristic structural-content check for body files only.
It is intended to detect thin canonical body files,
not lightweight navigation documents.

scoring_rule:
- PASS: enough expected signals found
- REVIEW_NEEDED: some expected signals missing
- THIN: many expected signals missing

## overall summary

- total_body_files_checked: 204
- pass: 146
- review_needed: 40
- thin: 18

## thin files

- 020.architecture / 004.mode / 0200040001_MODE_OVERVIEW_ARCHITECTURE.md | missing: purpose:, scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, design_intent:, canonical_rules:, state_model:, transition_rules:, dependency:, actor_boundary:, decision_matrix:
- 020.architecture / 005.story / 0200050001_STORY_OVERVIEW_ARCHITECTURE.md | missing: purpose:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, design_intent:, canonical_rules:, state_model:, transition_rules:, dependency:, actor_boundary:, decision_matrix:
- 020.architecture / 006.player / 0200060001_PLAYER_OVERVIEW_ARCHITECTURE.md | missing: purpose:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, design_intent:, canonical_rules:, state_model:, transition_rules:, dependency:, actor_boundary:, decision_matrix:
- 020.architecture / 012.integration / 0200120001_INTEGRATION_OVERVIEW_ARCHITECTURE.md | missing: purpose:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, design_intent:, canonical_rules:, state_model:, transition_rules:, dependency:, actor_boundary:, decision_matrix:
- 130.development / 004.mode / 1300040002_WORLD_MODE_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 004.mode / 1300040004_OPERATION_MODE_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 005.story / 1300050002_WORLD_STORY_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 005.story / 1300050003_PLAYER_STORY_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 005.story / 1300050004_EVENT_STORY_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 005.story / 1300050005_PROGRESS_STORY_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 006.player / 1300060002_PLAYER_IDENTITY_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 006.player / 1300060003_PLAYER_ROLE_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 006.player / 1300060004_PLAYER_PROGRESS_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 006.player / 1300060005_PLAYER_BOUNDARY_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 012.integration / 1300120002_INTERNAL_INTEGRATION_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 012.integration / 1300120003_EXTERNAL_INTEGRATION_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 012.integration / 1300120004_EVENT_INTEGRATION_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration
- 130.development / 012.integration / 1300120005_AUTHORITY_BOUNDARY_INTEGRATION_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review, migration

## review_needed files

- 050.flow / 004.mode / 0500040002_WORLD_MODE_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 004.mode / 0500040003_ACCESS_MODE_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 004.mode / 0500040004_OPERATION_MODE_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 004.mode / 0500040005_TRANSITION_MODE_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 005.story / 0500050002_WORLD_STORY_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 005.story / 0500050003_PLAYER_STORY_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 005.story / 0500050004_EVENT_STORY_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 005.story / 0500050005_PROGRESS_STORY_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 006.player / 0500060002_PLAYER_IDENTITY_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 006.player / 0500060003_PLAYER_ROLE_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 006.player / 0500060004_PLAYER_PROGRESS_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 012.integration / 0500120002_INTERNAL_INTEGRATION_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 012.integration / 0500120003_EXTERNAL_INTEGRATION_FLOW.md | missing: validation_rules:, decision_matrix:
- 050.flow / 012.integration / 0500120004_EVENT_INTEGRATION_FLOW.md | missing: validation_rules:, decision_matrix:
- 080.policy / 004.mode / 0800040005_TRANSITION_MODE_POLICY.md | missing: required_behavior:, policy_rules:, disclosure, authority, matrix
- 080.policy / 005.story / 0800050003_PLAYER_STORY_POLICY.md | missing: required_behavior:, policy_rules:, authority, retention
- 080.policy / 012.integration / 0800120002_INTERNAL_INTEGRATION_POLICY.md | missing: required_behavior:, policy_rules:, disclosure, authority, matrix
- 080.policy / 012.integration / 0800120003_EXTERNAL_INTEGRATION_POLICY.md | missing: required_behavior:, policy_rules:, disclosure, matrix
- 080.policy / 012.integration / 0800120004_EVENT_INTEGRATION_POLICY.md | missing: required_behavior:, policy_rules:, authority, retention, matrix
- 120.implementation / 004.mode / 1200040002_WORLD_MODE_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 004.mode / 1200040003_ACCESS_MODE_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 004.mode / 1200040004_OPERATION_MODE_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 004.mode / 1200040005_TRANSITION_MODE_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 005.story / 1200050002_WORLD_STORY_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 005.story / 1200050003_PLAYER_STORY_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 005.story / 1200050004_EVENT_STORY_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 005.story / 1200050005_PROGRESS_STORY_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 006.player / 1200060002_PLAYER_IDENTITY_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 006.player / 1200060003_PLAYER_ROLE_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 006.player / 1200060004_PLAYER_PROGRESS_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 006.player / 1200060005_PLAYER_BOUNDARY_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 012.integration / 1200120002_INTERNAL_INTEGRATION_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 012.integration / 1200120003_EXTERNAL_INTEGRATION_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 012.integration / 1200120004_EVENT_INTEGRATION_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 120.implementation / 012.integration / 1200120005_AUTHORITY_BOUNDARY_INTEGRATION_IMPLEMENTATION.md | missing: required_behavior:, implementation_components:, module_split:, implementation_rules:
- 130.development / 004.mode / 1300040003_ACCESS_MODE_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, migration
- 130.development / 004.mode / 1300040005_TRANSITION_MODE_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:, example_scenarios:, review
- 130.development / 005.story / 1300050001_STORY_CORE_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:
- 130.development / 006.player / 1300060001_PLAYER_CORE_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:
- 130.development / 012.integration / 1300120001_INTEGRATION_CORE_DEVELOPMENT.md | missing: scope:, required_behavior:, validation_rules:, failure_codes:

## interpretation

- This report excludes index, overview, and layer-summary files.
- It is intended to judge canonical body density only.
- PASS means body density is broadly sufficient.
- REVIEW_NEEDED means the body is usable but should be reinforced.
- THIN means the body should be treated as incomplete.
