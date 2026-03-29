# ============================================================
# GAME BUILDER PROJECT API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Project API of Game Builder.

This interface specifies the project-facing API contract
used by Builder frontend and Builder-supporting services.

It covers:
- project creation
- project listing
- project retrieval
- project metadata update
- project duplication
- project archival
- project status inspection

This document defines required request/response fields
and behavioral rules.


# ============================================================
# 1. ROLE OF PROJECT API
# ============================================================

The Project API manages the primary Builder authoring unit.

A project is the Builder-side authoritative authoring object.

Project API must support:

- template-first creation
- workspace-aware retrieval
- status-aware listing
- runtime-aware metadata
- export/submission visibility support

Project API must not:
- create export packages
- create submissions
- mutate runtime truth directly
- bypass workspace/title linkage rules


# ============================================================
# 2. PROJECT OBJECT MINIMUM SHAPE
# ============================================================

A project object must expose at minimum:

- project_code
- workspace_code
- game_title_code where applicable
- project_name
- project_status
- runtime_family_code
- runtime_profile_code where applicable
- ruleset_profile_code where applicable
- template_profile_code where applicable
- template_family_code where applicable
- template_tier where applicable
- latest_revision_ref where applicable
- latest_autosave_ref where applicable
- validation_state_summary
- export_state_summary
- submission_state_summary
- created_at
- updated_at


# ============================================================
# 3. CREATE PROJECT
# ============================================================

operation_name:
create_project

purpose:
Create a new Builder project.

Supported creation paths:
- create from template
- create from duplicate seed where allowed
- controlled minimal creation path if explicitly supported

required_request_fields:
- workspace_code
- project_name
- runtime_family_code where applicable
- template_profile_code where applicable
- game_title_code where applicable
- correlation_id

optional_request_fields:
- template_family_code
- template_tier
- project_summary
- duplicate_source_project_code where applicable

required_response_fields:
- project_code
- workspace_code
- project_status
- runtime_family_code
- template_profile_code where applicable
- created_at
- updated_at

behavior_rules:
- workspace_code must resolve before creation
- template_profile_code should be the primary creation path
- project_name must be explicit
- project must not remain runtime-ambiguous after creation
- creation must initialize project metadata sufficient for Builder navigation

blocking_conditions:
- workspace unresolved
- template unresolved where required
- incompatible runtime/template pair
- permission denied
- invalid creation path


# ============================================================
# 4. LIST PROJECTS
# ============================================================

operation_name:
list_projects

purpose:
Return Builder projects visible in the current workspace context.

required_request_fields:
- workspace_code
- correlation_id

optional_request_fields:
- project_status
- runtime_family_code
- template_family_code
- updated_after
- sort_key
- page_ref where pagination is used

required_response_fields:
- project_list
- total_count or page_summary
- workspace_code

Each project_list item must expose at minimum:
- project_code
- project_name
- project_status
- runtime_family_code
- template_family_code where applicable
- latest_revision_ref where applicable
- validation_state_summary
- export_state_summary
- submission_state_summary
- updated_at

behavior_rules:
- listing must be workspace-scoped
- listing must be role-aware
- listing should support status filtering
- listing should support runtime/template filtering


# ============================================================
# 5. GET PROJECT
# ============================================================

operation_name:
get_project

purpose:
Return the detailed project object for one project.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- project object with minimum shape
- linkage summary
- status summary
- save summary
- validation summary
- export summary
- submission summary

behavior_rules:
- get_project must be project-scoped
- response must be enough to populate Project Overview
- response must not require frontend reconstruction of critical status truths


# ============================================================
# 6. UPDATE PROJECT METADATA
# ============================================================

operation_name:
update_project_metadata

purpose:
Update project-level metadata that is not block-level content.

Examples:
- project_name
- project_summary
- selected title linkage where allowed
- selected release-facing metadata preparation fields where allowed

required_request_fields:
- project_code
- correlation_id

optional_mutable_fields:
- project_name
- project_summary
- game_title_code where policy allows
- editor_display_preferences where supported
- project_tags where supported

required_response_fields:
- project_code
- updated_at
- updated project metadata summary

behavior_rules:
- metadata update must not silently mutate runtime structure
- metadata update must remain role-aware
- immutable identity fields must not be overwritten through metadata update
- project status transitions must not be implicit side effects unless explicitly defined


# ============================================================
# 7. DUPLICATE PROJECT
# ============================================================

operation_name:
duplicate_project

purpose:
Create a new project derived from an existing source project.

required_request_fields:
- source_project_code
- workspace_code
- new_project_name
- correlation_id

optional_request_fields:
- duplicate_assets_flag
- duplicate_template_binding_flag
- duplicate_runtime_binding_flag

required_response_fields:
- new_project_code
- source_project_code
- created_at

behavior_rules:
- duplication must create a new project identity
- duplication must not reuse the same project_code
- duplicated project must receive its own save lineage
- duplicated project must not silently inherit forbidden external lifecycle state
- export/submission state from source must not be treated as carried-over finality

blocking_conditions:
- source project inaccessible
- permission denied
- policy-blocked duplication path


# ============================================================
# 8. ARCHIVE PROJECT
# ============================================================

operation_name:
archive_project

purpose:
Move a project into archived lifecycle state.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- project_code
- project_status
- archived_at or updated_at

behavior_rules:
- archive is preferred to destructive delete for project lifecycle
- archived project should remain discoverable where policy allows
- archive must not destroy revision lineage implicitly
- archive must not destroy export/submission history implicitly

blocking_conditions:
- permission denied
- policy prohibits archive due to unresolved lifecycle condition where applicable


# ============================================================
# 9. GET PROJECT STATUS SUMMARY
# ============================================================

operation_name:
get_project_status_summary

purpose:
Return a UI-friendly lifecycle summary for one project.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- project_code
- dirty_state
- latest_revision_ref
- latest_autosave_ref
- validation_state_summary
- export_state_summary
- submission_state_summary
- last_updated_at

behavior_rules:
- response must be enough to support Builder Home / Project Overview
- response must not require deep additional calls for basic status visibility


# ============================================================
# 10. ROLE-AWARE ACCESS RULE
# ============================================================

Project API access must be role-aware.

owner:
- full project creation/read/update/archive/duplicate authority

editor:
- project read/update authority according to policy
- may create project where workspace policy allows

reviewer:
- project read visibility where granted
- no unrestricted mutation by default

publisher:
- project read visibility
- limited metadata visibility/update only where policy allows

Role-aware checks must be enforced by API,
not only by frontend visibility.


# ============================================================
# 11. ERROR MODEL
# ============================================================

Project API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict

Where helpful, responses should expose:
- blocking_reason_summary
- missing_dependency_summary
- next_allowed_actions summary


# ============================================================
# 12. FINAL INTERFACE RULE
# ============================================================

The Project API is the entry and identity surface
for Builder authoring.

Core summary:

- project is the primary authoring unit
- template-first creation is preferred
- listing and retrieval must be workspace-aware
- metadata updates must be bounded
- duplication must create new lineage
- archive should preserve history
- project status summary must remain easy to consume
