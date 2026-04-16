# ============================================================
# GAME OS SCREEN EXACT DESIGN SET
# ============================================================

status: draft-fixed
system: Civilization System
os: GameOS
layer: screen exact design
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

---

## 0. Scope

This document fixes the first canonical screen exact design set for GameOS.

Covered screens:
- Builder Home
- Template Gallery
- Project Overview
- Main Editor
- Asset Studio
- Preview Studio
- Validation Center
- Export / Publish Center
- Runtime Launcher
- VN Runtime Session
- RPG Runtime Session
- Submission Request Detail
- Publish Activation Review

---

## 1. Shared screen exactness rules

### 1.1 Common screen contract
Every GameOS screen must define:
- screen_code
- screen_name
- primary_actor
- allowed_secondary_actor
- entry_condition
- initial_load_data
- visible_sections
- primary_actions
- secondary_actions
- empty_state
- loading_state
- error_state
- permission_denied_state
- success_feedback
- navigation_targets
- platform_notes

### 1.2 Device support rule
All screens must assume support for:
- iPhone
- Android
- PC
- tablet

### 1.3 Permission rule
Every screen must display a permission basis when edit/publish/review actions are available.

---

## 2. Builder Home

screen_code: game_builder_home
screen_name: Builder Home
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor
- creator_collaborator_viewer

purpose:
- entry screen for Builder work
- resume recent projects
- create new project
- enter template gallery
- view validation/publish queue summary

entry_condition:
- actor authenticated
- Builder access granted

initial_load_data:
- recent_project_list
- pinned_template_list
- draft_count
- validation_pending_count
- submission_pending_count
- collaborator_invitation_count

visible_sections:
- top action bar
- recent projects
- create project card
- template shortcuts
- draft and queue summary
- collaboration notices

primary_actions:
- create_project
- open_project
- open_template_gallery

secondary_actions:
- search_project
- filter_runtime_family
- open_collaboration_panel

empty_state:
- no project exists
- show create_project emphasis

loading_state:
- show skeleton cards for recent projects and summaries

error_state:
- show retry for dashboard load failure

permission_denied_state:
- show Builder access request message

success_feedback:
- project created
- invitation accepted

navigation_targets:
- Template Gallery
- Project Overview
- Collaboration Session Panel

platform_notes:
- mobile shows stacked cards
- PC/tablet may show two-column dashboard

---

## 3. Template Gallery

screen_code: game_template_gallery
screen_name: Template Gallery
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor

purpose:
- select starting template by runtime family and design intent

entry_condition:
- actor authenticated
- Builder access granted

initial_load_data:
- template_catalog
- runtime_family_filter_set
- featured_template_set
- compatibility_notes

visible_sections:
- search bar
- runtime family filter
- template cards
- template detail side panel
- create from template CTA

primary_actions:
- preview_template
- choose_template
- create_project_from_template

secondary_actions:
- search_template
- filter_template
- compare_template

empty_state:
- no template matched current filter

loading_state:
- show placeholder template grid

error_state:
- catalog retrieval failed

permission_denied_state:
- template usage unavailable for current actor

success_feedback:
- template selected
- project seed created

navigation_targets:
- Builder Home
- Project Overview

platform_notes:
- desktop may show list and detail split
- mobile opens detail as full-page sheet

---

## 4. Project Overview

screen_code: game_project_overview
screen_name: Project Overview
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor
- creator_collaborator_viewer

purpose:
- summarize project identity, runtime basis, revision status, readiness, and team context

entry_condition:
- project exists
- actor has project visibility

initial_load_data:
- project_header
- runtime_profile
- template_profile
- latest_revision
- autosave_snapshot
- validation_summary
- export_summary
- submission_summary
- collaborator_set

visible_sections:
- project header
- revision status strip
- readiness summary
- collaborator summary
- quick actions
- recent activity

primary_actions:
- open_editor
- open_preview
- run_validation
- open_export_publish

secondary_actions:
- restore_autosave
- open_collaboration_panel
- rename_project where allowed

empty_state:
- no revision yet

loading_state:
- summary cards loading

error_state:
- project summary load failed

permission_denied_state:
- project hidden or insufficient access

success_feedback:
- project updated
- autosave restored

navigation_targets:
- Main Editor
- Preview Studio
- Validation Center
- Export / Publish Center

platform_notes:
- mobile uses accordion sections
- desktop/tablet may show summary cards in grid

---

## 5. Main Editor

screen_code: game_main_editor
screen_name: Main Editor
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor

purpose:
- author scenes, routes, maps, system flags, and linked assets

entry_condition:
- editable project access
- latest revision available or seed revision created

initial_load_data:
- project_header
- editable_revision
- scene_tree
- route_tree
- map_tree where relevant
- asset_ref_list
- inline_validation_findings
- collaborator_lock_state

visible_sections:
- top save bar
- structure navigator
- main editing canvas
- properties panel
- validation sidebar
- unsaved change indicator

primary_actions:
- save_revision
- autosave
- add_scene
- add_route
- add_map
- bind_asset
- resolve_finding

secondary_actions:
- duplicate_node
- reorder_node
- compare_revision
- restore_previous_revision

empty_state:
- no scene or map created yet

loading_state:
- show editor shell with disabled canvas

error_state:
- revision load conflict or save failure

permission_denied_state:
- viewer cannot edit

success_feedback:
- saved
- autosaved
- finding resolved

navigation_targets:
- Project Overview
- Asset Studio
- Preview Studio
- Validation Center

platform_notes:
- PC/tablet preferred for dense editing
- mobile must support constrained editing and review, not heavy multi-pane layout

---

## 6. Asset Studio

screen_code: game_asset_studio
screen_name: Asset Studio
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor

purpose:
- manage art, audio, effect, UI, and runtime-linked assets

entry_condition:
- editable project access

initial_load_data:
- asset_catalog
- asset_usage_map
- upload_queue
- asset_validation_state
- storage_summary

visible_sections:
- asset filter bar
- asset grid/list
- asset detail panel
- usage references
- upload/import queue

primary_actions:
- upload_asset
- register_asset
- replace_asset_version
- bind_asset_to_project

secondary_actions:
- filter_asset
- preview_asset
- archive_unused_asset

empty_state:
- no asset registered

loading_state:
- asset placeholders

error_state:
- upload failed or metadata load failed

permission_denied_state:
- asset modification denied

success_feedback:
- asset uploaded
- asset linked
- asset replaced

navigation_targets:
- Main Editor
- Preview Studio

platform_notes:
- mobile prioritizes list flow
- desktop/tablet can show grid + detail

---

## 7. Preview Studio

screen_code: game_preview_studio
screen_name: Preview Studio
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor
- creator_collaborator_viewer

purpose:
- run revision-based preview and inspect blockers before validation/export

entry_condition:
- project exists
- basis revision selected

initial_load_data:
- selected_revision
- preview_session_status
- preview_runtime_view
- blocking_findings
- warning_findings

visible_sections:
- revision selector
- preview runtime pane
- findings summary
- environment switcher
- session controls

primary_actions:
- create_preview_session
- restart_preview
- switch_device_class
- switch_language

secondary_actions:
- jump_to_finding_source
- open_validation_center

empty_state:
- no preview session yet

loading_state:
- preview session building

error_state:
- preview build failed

permission_denied_state:
- preview unavailable for current actor

success_feedback:
- preview ready
- device class changed

navigation_targets:
- Main Editor
- Validation Center
- Export / Publish Center

platform_notes:
- desktop/tablet should allow side-by-side preview and finding view
- mobile uses tab switch between preview and findings

---

## 8. Validation Center

screen_code: game_validation_center
screen_name: Validation Center
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor
- reviewer_validation

purpose:
- execute validation and review blocking/warning findings

entry_condition:
- project exists
- basis revision selected

initial_load_data:
- validation_profile_set
- latest_validation_run
- findings_by_severity
- finding_source_map
- export_readiness_state

visible_sections:
- validation run header
- severity summary
- finding list
- finding detail panel
- source jump tools

primary_actions:
- run_validation
- rerun_validation
- mark_finding_acknowledged where allowed
- jump_to_editor_source

secondary_actions:
- filter_severity
- filter_domain
- export_findings_report

empty_state:
- no validation run yet

loading_state:
- validation running

error_state:
- validation execution failed

permission_denied_state:
- validation access denied

success_feedback:
- validation completed
- findings refreshed

navigation_targets:
- Main Editor
- Preview Studio
- Export / Publish Center

platform_notes:
- reviewer mode is read-heavy
- creator mode allows source jump and fix loop

---

## 9. Export / Publish Center

screen_code: game_export_publish_center
screen_name: Export / Publish Center
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor
- reviewer_publish

purpose:
- build export package, inspect manifest, and submit for governance

entry_condition:
- project exists
- selected revision is export-eligible or reviewable

initial_load_data:
- selected_revision
- latest_validation_result
- export_package_summary
- manifest_summary
- target_platform_set
- target_store_set
- submission_history

visible_sections:
- export eligibility strip
- export build controls
- manifest preview
- target platform selector
- target store selector
- submission history

primary_actions:
- build_export_package
- regenerate_manifest
- create_submission_request

secondary_actions:
- download_manifest_view
- compare_export_package
- open_submission_detail

empty_state:
- no export yet

loading_state:
- export build in progress

error_state:
- export or manifest generation failed

permission_denied_state:
- publish action denied

success_feedback:
- export built
- submission created

navigation_targets:
- Validation Center
- Submission Request Detail

platform_notes:
- mobile shows step-by-step publish flow
- desktop/tablet can show manifest and history together

---

## 10. Runtime Launcher

screen_code: game_runtime_launcher
screen_name: Runtime Launcher
primary_actor: end_user_player
allowed_secondary_actor:
- creator_owner for self-test on activated release

purpose:
- enter a released game package from entitlement-based access

entry_condition:
- activated release exists
- entitlement or allowed launch permission exists

initial_load_data:
- release_header
- package_basis
- language_options
- device_profile
- save_slot_summary
- recent_play_summary

visible_sections:
- release hero panel
- launch controls
- continue save slots
- start new session
- language and device notes

primary_actions:
- start_new_session
- continue_from_save
- switch_language

secondary_actions:
- view_release_notes
- open_result_history where available

empty_state:
- no save exists

loading_state:
- release metadata loading

error_state:
- release unavailable or entitlement mismatch

permission_denied_state:
- no launch permission

success_feedback:
- session started

navigation_targets:
- VN Runtime Session
- RPG Runtime Session

platform_notes:
- mobile prioritizes continue CTA
- PC/tablet may display richer side information

---

## 11. VN Runtime Session

screen_code: game_vn_runtime_session
screen_name: VN Runtime Session
primary_actor: end_user_player

purpose:
- play route-based VN or dating-sim release

entry_condition:
- runtime session started
- runtime family is vn

initial_load_data:
- current_scene
- current_route_state
- dialogue_block
- affection_flags
- save_slot_set
- ui_preferences

visible_sections:
- scene display
- dialogue area
- choice panel
- quick menu
- save/load overlay entry

primary_actions:
- advance_scene
- choose_option
- open_save_overlay
- quick_save
- quick_load where allowed

secondary_actions:
- auto_mode_toggle
- backlog_open
- settings_open

empty_state:
- not applicable after session start

loading_state:
- scene loading transition

error_state:
- runtime interruption or asset load failure

permission_denied_state:
- not applicable

success_feedback:
- save completed
- route checkpoint reached

navigation_targets:
- Ending / Result Screen
- Runtime Error / Recovery Screen

platform_notes:
- mobile one-hand flow supported
- PC/tablet may show richer side controls

---

## 12. RPG Runtime Session

screen_code: game_rpg_runtime_session
screen_name: RPG Runtime Session
primary_actor: end_user_player

purpose:
- play map and party-based RPG release

entry_condition:
- runtime session started
- runtime family is rpg

initial_load_data:
- party_state
- current_map_ref
- quest_state
- inventory_state
- save_slot_set
- runtime_ui_prefs

visible_sections:
- world/map view
- party status
- quest tracker
- action menu
- save/load overlay entry

primary_actions:
- move_map
- open_battle_result_flow
- manage_party
- open_inventory
- save_progress

secondary_actions:
- open_quest_log
- open_system_menu
- load_previous_save

empty_state:
- not applicable after session start

loading_state:
- map or battle transition loading

error_state:
- runtime interruption or state recovery failure

permission_denied_state:
- not applicable

success_feedback:
- save completed
- quest progress updated

navigation_targets:
- Ending / Result Screen
- Runtime Error / Recovery Screen

platform_notes:
- mobile must simplify control density
- tablet/PC may show more simultaneous panels

---

## 13. Submission Request Detail

screen_code: game_submission_request_detail
screen_name: Submission Request Detail
primary_actor: creator_owner
allowed_secondary_actor:
- reviewer_validation
- reviewer_publish

purpose:
- inspect submission basis, review history, and current governance state

entry_condition:
- submission request exists
- actor has request visibility

initial_load_data:
- submission_header
- export_package_summary
- manifest_summary
- validation_summary
- policy_review_required
- review_history

visible_sections:
- submission status strip
- package and manifest summary
- validation history
- review history
- review note panel

primary_actions:
- add_creator_note where allowed
- open_publish_review where allowed

secondary_actions:
- open_manifest_view
- open_validation_run
- refresh_status

empty_state:
- not applicable once request exists

loading_state:
- submission history loading

error_state:
- request load failed

permission_denied_state:
- request hidden or denied

success_feedback:
- note added
- status refreshed

navigation_targets:
- Export / Publish Center
- Publish Activation Review

platform_notes:
- reviewer mode emphasizes evidence panels
- creator mode emphasizes status tracking

---

## 14. Publish Activation Review

screen_code: game_publish_activation_review
screen_name: Publish Activation Review
primary_actor: reviewer_publish
allowed_secondary_actor:
- operator_policy for gambling/runtime policy cases

purpose:
- final publish/go-live decision after evidence review

entry_condition:
- submission exists
- actor has publish authority

initial_load_data:
- submission_header
- validation_acceptance_state
- package_and_manifest_summary
- policy_review_summary
- marketplace_target_summary
- activation_risk_notes

visible_sections:
- decision header
- evidence checklist
- risk note panel
- policy decision section where required
- final action bar

primary_actions:
- approve_activation
- hold_activation
- deny_activation

secondary_actions:
- request_more_information
- open_policy_review_record
- open_submission_detail

empty_state:
- no eligible submission ready

loading_state:
- evidence bundle loading

error_state:
- decision service unavailable

permission_denied_state:
- actor lacks final publish authority

success_feedback:
- activation approved
- activation held
- activation denied

navigation_targets:
- Submission Request Detail
- Runtime Launcher after activation where permitted

platform_notes:
- desktop/tablet preferred for review density
- mobile supports status check and lightweight review only

---

## 15. Next exactness package

The next package after this screen set should be:
- DB column exact design
- stateflow exact design
- request/response payload exact JSON examples
