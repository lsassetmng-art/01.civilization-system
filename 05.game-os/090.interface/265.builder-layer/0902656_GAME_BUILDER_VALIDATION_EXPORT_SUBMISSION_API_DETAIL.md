# ============================================================
# GAME BUILDER VALIDATION EXPORT SUBMISSION API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Validation / Export / Submission API of Game Builder.

This interface specifies the handoff-facing API contract
used by Validation Center, Export / Publish Center,
and Builder-supporting backend services.

It covers:
- editing validation
- export validation
- publish validation
- validation result retrieval
- export readiness inspection
- export package creation
- export package retrieval/history
- runtime export contract retrieval
- submission readiness inspection
- submission request creation
- submission retrieval/history


# ============================================================
# 1. ROLE OF THIS API GROUP
# ============================================================

This API group is the formal handoff surface
between Builder authoring state
and GameOS lifecycle state.

It must preserve these distinctions:

- validation is not export
- export is not submission
- submission is not approval
- approval is not publish

It must not:
- fabricate runtime truth
- fabricate publish approval
- bypass validation blocking
- bypass release/title/seller linkage requirements


# ============================================================
# 2. VALIDATION RESULT OBJECT MINIMUM SHAPE
# ============================================================

A validation result object must expose at minimum:

- validation_result_ref
- project_code
- validation_stage
- validation_status
- basis_type
- basis_ref where applicable
- runtime_family_code
- blocking_count
- warning_count
- info_count
- detected_at
- findings_summary

validation_stage enum:
- editing_validation
- export_validation
- publish_validation

validation_status enum:
- not_run
- running
- passed
- warning_only
- failed_blocking
- superseded
- archived

basis_type examples:
- working_state
- revision
- export_package


# ============================================================
# 3. VALIDATION FINDING MINIMUM SHAPE
# ============================================================

A validation finding must expose at minimum:

- finding_id
- validation_result_ref
- validation_stage
- severity
- affected_scope_type
- affected_scope_ref
- summary
- fix_hint where available
- detected_at

severity enum:
- blocking
- warning
- info

affected_scope_type examples:
- project
- block
- asset
- runtime_binding
- template_binding
- export_contract
- submission_linkage


# ============================================================
# 4. RUN EDITING VALIDATION
# ============================================================

operation_name:
run_editing_validation

purpose:
Run authoring-focused validation for current Builder state.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- basis_type
- basis_ref where applicable
- scope_ref where partial validation is supported

required_response_fields:
- validation_result_ref
- validation_stage
- validation_status
- blocking_count
- warning_count
- info_count
- basis_type
- basis_ref where applicable
- detected_at

behavior_rules:
- editing validation may run on working_state
- editing validation should be fast enough for iterative use
- editing validation must still remain formal validation truth

blocking_conditions:
- project unresolved
- permission denied
- invalid basis declaration


# ============================================================
# 5. RUN EXPORT VALIDATION
# ============================================================

operation_name:
run_export_validation

purpose:
Run export-readiness validation on a formal Builder basis.

required_request_fields:
- project_code
- correlation_id

required_basis_fields:
- revision_ref

optional_request_fields:
- export_profile_hint
- asset_manifest_ref where precomputed

required_response_fields:
- validation_result_ref
- validation_stage
- validation_status
- blocking_count
- warning_count
- info_count
- basis_type
- basis_ref
- detected_at

behavior_rules:
- export validation must run on official saved revision basis
- export validation must verify runtime/template/asset completeness
- export validation must be sufficient for export gating

blocking_conditions:
- revision unresolved
- revision not official saved revision
- permission denied


# ============================================================
# 6. RUN PUBLISH VALIDATION
# ============================================================
operation_name:
run_publish_validation

purpose:
Run submission/publish-readiness validation.

required_request_fields:
- project_code
- correlation_id

required_basis_fields:
- revision_ref
or
- export_package_code

optional_request_fields:
- release_code
- game_title_code
- seller_code where linkage requires explicit resolution

required_response_fields:
- validation_result_ref
- validation_stage
- validation_status
- blocking_count
- warning_count
- info_count
- basis_type
- basis_ref
- detected_at

behavior_rules:
- publish validation must verify linkage and platform readiness
- publish validation must be stronger than export validation
- publish validation must not imply approval

blocking_conditions:
- required linkage unresolved
- invalid basis
- permission denied


# ============================================================
# 7. GET VALIDATION RESULT
# ============================================================
operation_name:
get_validation_result

purpose:
Return one validation result in detail.

required_request_fields:
- project_code
- validation_result_ref
- correlation_id

required_response_fields:
- validation result object
- finding_list
- freshness_summary
- basis_summary

behavior_rules:
- response must be sufficient for Validation Center rendering
- finding structure must remain machine-readable


# ============================================================
# 8. LIST VALIDATION RESULTS
# ============================================================
operation_name:
list_validation_results_for_project

purpose:
Return project-scoped validation history.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- validation_stage
- basis_type
- include_archived
- page_ref

required_response_fields:
- validation_result_list
- page_summary or total_count

behavior_rules:
- validation history must remain project-scoped
- latest result must be distinguishable from prior results


# ============================================================
# 9. INSPECT EXPORT READINESS
# ============================================================
operation_name:
inspect_export_readiness

purpose:
Return a formal export-readiness summary.

required_request_fields:
- project_code
- revision_ref
- correlation_id

required_response_fields:
- project_code
- revision_ref
- export_ready
- blocking_count
- warning_count
- required_asset_family_summary
- runtime_resolution_summary
- template_resolution_summary
- export_contract_prerequisite_summary
- last_export_validation_ref where applicable

behavior_rules:
- export readiness must not rely on vague heuristics
- response must be sufficient for Export / Publish Center

blocking_conditions:
- revision unresolved
- unresolved export validation basis


# ============================================================
# 10. CREATE EXPORT PACKAGE
# ============================================================
operation_name:
create_export_package

purpose:
Create an export package candidate from one saved revision.

required_request_fields:
- project_code
- revision_ref
- correlation_id

optional_request_fields:
- export_summary
- export_profile_hint

required_response_fields:
- export_package_code
- project_code
- revision_ref
- export_status
- export_hash
- runtime_export_contract_ref where applicable
- asset_manifest_ref
- created_at

export_status enum:
- created
- packaging
- packaged
- failed
- superseded
- archived

behavior_rules:
- export must require official saved revision
- export must require no blocking export validation findings
- export must create explicit lineage to revision
- export must not imply submission

blocking_conditions:
- revision unresolved
- revision not exportable
- blocking export validation findings remain
- permission denied


# ============================================================
# 11. GET EXPORT PACKAGE
# ============================================================
operation_name:
get_export_package

purpose:
Return one export package in detail.

required_request_fields:
- project_code
- export_package_code
- correlation_id

required_response_fields:
- export_package_code
- project_code
- revision_ref
- export_status
- export_hash
- runtime_export_contract_ref
- asset_manifest_ref
- created_at
- lineage_summary
- package_summary

behavior_rules:
- response must be sufficient for export inspection screens


# ============================================================
# 12. LIST EXPORT PACKAGES
# ============================================================
operation_name:
list_export_packages_for_project

purpose:
Return export history for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- include_archived
- page_ref
- sort_key

required_response_fields:
- export_package_list
- page_summary or total_count

Each list item should expose at minimum:
- export_package_code
- revision_ref
- export_status
- export_hash summary
- created_at
- linked_submission_summary where applicable


# ============================================================
# 13. GET RUNTIME EXPORT CONTRACT
# ============================================================
operation_name:
get_runtime_export_contract

purpose:
Return the resolved runtime export contract for one export package.

required_request_fields:
- project_code
- export_package_code
- correlation_id

required_response_fields:
- runtime_export_contract_ref
- contract_identity_summary
- runtime_resolution_summary
- ruleset_resolution_summary
- template_resolution_summary
- asset_resolution_summary
- preview_compatibility_summary
- sync_candidate_summary
- state_boundary_summary
- persona_boundary_summary
- commerce_boundary_summary

behavior_rules:
- contract must be explicit and readable
- export package without resolvable runtime contract is invalid


# ============================================================
# 14. INSPECT SUBMISSION READINESS
# ============================================================
operation_name:
inspect_submission_readiness

purpose:
Return a formal submission-readiness summary.

required_request_fields:
- project_code
- export_package_code
- correlation_id

optional_request_fields:
- release_code
- game_title_code
- seller_code where explicit linkage is needed

required_response_fields:
- project_code
- export_package_code
- submission_ready
- blocking_count
- warning_count
- linkage_summary
- publish_validation_summary
- moderation_readiness_summary
- release_readiness_summary

behavior_rules:
- submission readiness must be based on explicit linkage and validation
- response must be sufficient for Export / Publish Center


# ============================================================
# 15. CREATE SUBMISSION REQUEST
# ============================================================
operation_name:
create_submission_request

purpose:
Create a submission request from one export package candidate.

required_request_fields:
- project_code
- export_package_code
- game_title_code
- release_code
- correlation_id

optional_request_fields:
- submission_summary
- seller_code where explicit linkage requires it

required_response_fields:
- submission_request_ref
- project_code
- export_package_code
- game_title_code
- release_code
- submission_status
- created_at

submission_status enum:
- created
- under_review
- validation_blocked
- moderation_pending
- approved_externally
- rejected_externally
- rollout_pending
- activated_externally
- archived

behavior_rules:
- submission must be explicit
- submission must require submission-ready state
- submission must not imply approval or activation

blocking_conditions:
- export package unresolved
- publish validation blocking remains
- release/title/seller linkage unresolved
- permission denied


# ============================================================
# 16. GET SUBMISSION REQUEST
# ============================================================
operation_name:
get_submission_request

purpose:
Return one submission request in detail.

required_request_fields:
- project_code
- submission_request_ref
- correlation_id

required_response_fields:
- submission_request_ref
- project_code
- export_package_code
- game_title_code
- release_code
- submission_status
- lifecycle_summary
- created_at
- updated_at

behavior_rules:
- response must distinguish Builder-visible state
  from external approval/activation state


# ============================================================
# 17. LIST SUBMISSION REQUESTS
# ============================================================
operation_name:
list_submission_requests_for_project

purpose:
Return submission history for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- include_archived
- page_ref
- sort_key

required_response_fields:
- submission_request_list
- page_summary or total_count

Each list item should expose at minimum:
- submission_request_ref
- export_package_code
- release_code
- submission_status
- created_at
- updated_at


# ============================================================
# 18. ROLE-AWARE ACCESS RULE
# ============================================================
owner:
- full validation/export/submission authority

editor:
- validation authority
- export authority where policy allows
- limited submission authority where policy allows

reviewer:
- validation visibility
- export/submission visibility where granted
- no unrestricted mutation by default

publisher:
- strong export/submission visibility
- submission authority according to policy

Permissions must be enforced by API.


# ============================================================
# 19. ERROR MODEL
# ============================================================
This API group should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- validation_blocked
- export_blocked
- submission_blocked

Where helpful, responses should expose:
- blocking_reason_summary
- affected_scope_summary
- next_allowed_actions summary


# ============================================================
# 20. FINAL INTERFACE RULE
# ============================================================

This API group is the formal Builder handoff surface.

Core summary:

- validation stages must remain distinct
- export readiness must be inspectable
- export must be explicit
- runtime export contract must be inspectable
- submission readiness must be inspectable
- submission must be explicit
- submission is not approval
- export is not publish
