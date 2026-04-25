# ============================================================
# NAMECARDMANAGER STATE FLOW EXACT
# ============================================================

status: canonical
app: NameCardManager
category: 03.business-app

state_principle:
- UI / sync presentation may use CommonOS.
- Business state meaning remains NameCardManager.
- Offline queue presentation is CommonOS.
- Queue item meaning is NameCardManager.

main_states:
- idle
- capture_ready
- local_draft
- queued_for_extraction
- extracting
- pending_review
- approved
- contact_created
- merge_review_required
- synced
- failed
- conflict

capture_flow:
1_idle_to_capture_ready:
  trigger: user opens capture
  output: camera/file/manual choices visible

2_capture_ready_to_local_draft:
  trigger: user captures image or enters manual card
  local_effect:
    - create local draft
    - attach temporary local attachment if any

3_local_draft_to_queued_for_extraction:
  trigger: user saves or submits
  queue_kind: capture_image_intake
  presentation_owner: CommonOS
  meaning_owner: NameCardManager

4_queued_for_extraction_to_pending_review:
  trigger: extraction result returned
  output:
    - extracted preview
    - review required flag

5_pending_review_to_contact_created:
  trigger: user approves corrected fields
  output:
    - contact created
    - company created or linked
    - timeline event may be created

6_contact_created_to_merge_review_required:
  trigger: duplicate candidate detected
  output:
    - merge review item

7_any_to_failed:
  trigger: transport / validation / server failure
  presentation_owner: CommonOS
  meaning_owner: NameCardManager

8_any_to_conflict:
  trigger: server and local state conflict
  presentation_owner: CommonOS
  meaning_owner: NameCardManager

offline_first_rules:
- local draft is allowed
- local edit is allowed
- local search over cached records is allowed
- local queue registration is required for submit actions
- destructive merge decision requires server confirmation when online

sync_triggers:
- app_launch
- foreground_resume
- online_recovery
- manual_sync
- send_possible
