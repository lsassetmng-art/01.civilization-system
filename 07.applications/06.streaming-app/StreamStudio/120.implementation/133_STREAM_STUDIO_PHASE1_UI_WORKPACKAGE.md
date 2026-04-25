# ============================================================
# STREAM STUDIO PHASE 1 UI WORKPACKAGE
# ============================================================

status: workpackage
layer: implementation-ui
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines UI implementation work for Phase 1.

phase_1_primary_screens:
- Home Dashboard
- Project Detail
- Upload Queue
- Publish Settings
- Notification and Mobile Quick Actions

required_project_detail_tabs_for_phase_1:
- overview
- assets
- metadata
- subtitle
- publish

phase_1_ui_capabilities:
- create project
- create upload session entry
- monitor upload queue states
- create video draft
- edit metadata
- assign thumbnail
- add subtitle track
- add trim / cut markers
- save publish setting
- validate publish readiness
- create publish request
- schedule publish
- see publish blockers
- see operation success / failure states

screen_transition_rules_to_keep:
- upload queue completed -> project detail assets context
- project detail publish tab -> publish settings context
- publish settings validation failure -> blocker-visible state
- publish ready -> publish now or schedule path only
- no hidden navigation may bypass readiness validation

required_ui_copy_namespaces:
- common.*
- streamstudio.home.*
- streamstudio.project.*
- streamstudio.upload_queue.*
- streamstudio.publish.*
- streamstudio.notification.*
- streamstudio.mobile.quick_action.*

phase_1_ui_excluded:
- marketplace listing screen execution
- membership manager execution
- split editor execution
- collaborator authority advanced exception editing
- connector audit browsing

ui_done_definition:
- phase 1 screens render with frozen state families
- required actions call exact API contracts
- validation and blocker messages appear distinctly
- confirmation sheet exists for publish_now and schedule_publish
- mobile quick metadata / publish confirmation does not bypass permission rules
