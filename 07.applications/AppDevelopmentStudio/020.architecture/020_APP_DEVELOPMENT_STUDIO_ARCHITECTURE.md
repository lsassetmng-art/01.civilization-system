# ============================================================
# APP DEVELOPMENT STUDIO ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines the primary architecture of App Development Studio.

architecture_goal:
To support end-to-end business-oriented application generation and control
from design input through generation, review, apply,
Git handling, testing support, and progress management.

core_architecture_blocks:
1. input and import block
2. readiness assessment block
3. rule resolution block
4. reusable component intelligence block
5. connection profile resolution block
6. generation block
7. review and approval control block
8. apply and rollback block
9. Git execution block
10. testing support block
11. version and bug management block
12. multilingual presentation block
13. progress aggregation block
14. build control block

1_input_and_import_block:
Handles:
- free input
- guided input
- standard template
- full generation format
- imported design documents

Outputs:
- parsed design context
- input mode metadata
- initial generation candidates

2_readiness_assessment_block:
Determines whether imported or authored design content is suitable for:
- full auto generation
- auto generation with warnings
- manual confirmation
- blocking due to major gaps

Evaluation factors include:
- design completeness
- design granularity
- ambiguity level
- unresolved dependencies
- component reuse readiness
- connection profile readiness
- output readiness

3_rule_resolution_block:
Resolves effective rules from:
- system defaults
- user rules
- project rules
- environment rules
- language rules
- artifact rules

4_reusable_component_intelligence_block:
Provides reusable part awareness for the internal AI.
It indexes:
- BusinessOS shared components
- user private components
- project local components

It provides:
- compatibility
- dependency
- usage recommendation
- scope restriction awareness

5_connection_profile_resolution_block:
Provides AI-friendly structured access to database connection settings.
It resolves:
- connection profile
- environment scope
- permission scope
- schema scope
- purpose suitability

6_generation_block:
Generates:
- design drafts
- Java source
- SQL
- scripts
- package structures
- unit test code
- higher-level test item sheets
- release-related outputs

7_review_and_approval_control_block:
Determines the action path based on:
- review mode
- approval mode
- safety escalation
- artifact class
- environment class
- target risk

8_apply_and_rollback_block:
Controls:
- retained proposal application
- backup generation
- restore point creation
- rollback candidate linking
- apply verification

9_git_execution_block:
Handles:
- repository interaction
- branch decisions
- commit draft generation
- commit execution
- push execution
- tag execution
under configured policy.

10_testing_support_block:
Splits testing support into:
- Java unit test auto generation
- integration/system/acceptance test item sheet generation
- test result tracking
- test progress management
- manual update handling

11_version_and_bug_management_block:
Handles:
- artifact version policy
- artifact version linkage
- bug list
- fix linkage
- version-to-bug relationship
- retest linkage

12_multilingual_presentation_block:
Handles:
- UI language
- artifact output language
- localized labels
- localized messages
- fallback language

13_progress_aggregation_block:
Aggregates:
- design progress
- code progress
- SQL progress
- test progress
- bug-fix progress
- Git progress
- release progress

14_build_control_block:
Handles build execution policy:
- disabled
- enabled
- if_available
- external_only

architectural_summary:
App Development Studio is not a single generator module.
It is a layered execution-control architecture
that coordinates design, code, SQL, testing, Git, tracking, and multilingual operation.
