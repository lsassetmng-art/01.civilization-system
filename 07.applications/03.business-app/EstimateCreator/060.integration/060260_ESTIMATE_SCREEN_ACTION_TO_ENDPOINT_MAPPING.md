# ============================================================
# ESTIMATE SCREEN ACTION TO ENDPOINT MAPPING
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document maps screen actions
to exact logical endpoints.

# ============================================================
# 2. ENTRY
# ============================================================

screen_action:
- login_screen_submit
endpoint:
- POST /estimatecreator/entry/standalone/resolve

screen_action:
- deeplink_entry_open
endpoint:
- POST /estimatecreator/entry/deeplink/resolve
- POST /estimatecreator/session/shared/resolve

# ============================================================
# 3. ESTIMATE LIST / DETAIL
# ============================================================

screen_action:
- estimate_list_load
endpoint:
- GET /estimatecreator/estimates

screen_action:
- estimate_detail_load
endpoint:
- GET /estimatecreator/estimates/{estimate_id}

# ============================================================
# 4. ESTIMATE EDITOR
# ============================================================

screen_action:
- estimate_editor_save
endpoint:
- POST /estimatecreator/estimates
or
- PATCH /estimatecreator/estimates/{estimate_id}/header
- PUT /estimatecreator/estimates/{estimate_id}/lines

# ============================================================
# 5. MEMOS
# ============================================================

screen_action:
- opportunity_memo_save
endpoint:
- PUT /estimatecreator/estimates/{estimate_id}/opportunity-memo

screen_action:
- meeting_memo_save
endpoint:
- PUT /estimatecreator/estimates/{estimate_id}/meeting-memo

# ============================================================
# 6. SHARE
# ============================================================

screen_action:
- share_action_submit
endpoint:
- POST /estimatecreator/share/request

screen_action:
- share_revoke_submit
endpoint:
- POST /estimatecreator/share/revoke

# ============================================================
# 7. ERP PUBLICATION
# ============================================================

screen_action:
- erp_publication_submit
endpoint:
- POST /estimatecreator/publication/erp/request

screen_action:
- erp_publication_result_refresh
endpoint:
- GET /estimatecreator/publication/erp/result/{estimate_id}

# ============================================================
# 8. INVENTORY
# ============================================================

screen_action:
- inventory_refresh_submit
endpoint:
- POST /estimatecreator/inventory/reference/request

# ============================================================
# 9. PREMIUM
# ============================================================

screen_action:
- premium_gate_check
endpoint:
- POST /estimatecreator/premium/entitlement/resolve

# ============================================================
# 10. TEMPLATE
# ============================================================

screen_action:
- template_apply_submit
endpoint:
- POST /estimatecreator/templates/apply

# ============================================================
# 11. QA
# ============================================================

screen_action:
- qa_create_submit
endpoint:
- POST /estimatecreator/qa

screen_action:
- qa_update_submit
endpoint:
- PATCH /estimatecreator/qa/{qa_id}

# ============================================================
# 12. OFFLINE / SYNC
# ============================================================

screen_action:
- queue_enqueue
endpoint:
- POST /estimatecreator/sync/queue/enqueue

screen_action:
- queue_replay_start
endpoint:
- POST /estimatecreator/sync/queue/replay/start

screen_action:
- queue_replay_item_result
endpoint:
- GET /estimatecreator/sync/queue/replay/result/{pending_operation_id}

screen_action:
- sync_push_result_load
endpoint:
- GET /estimatecreator/sync/push/result

screen_action:
- sync_pull_result_load
endpoint:
- GET /estimatecreator/sync/pull/result

screen_action:
- conflict_resolution_submit
endpoint:
- POST /estimatecreator/sync/conflict/resolve

