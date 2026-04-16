# ============================================================
# ESTIMATE API ENDPOINT CATALOG
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the endpoint-level catalog for EstimateCreator.

It does not require final transport technology,
but it fixes logical endpoint boundaries and ownership.

# ============================================================
# 2. ENTRY / SESSION ENDPOINTS
# ============================================================

- POST /estimatecreator/entry/standalone/resolve
  purpose:
  resolve standalone entry context

- POST /estimatecreator/entry/deeplink/resolve
  purpose:
  resolve deeplink entry context

- POST /estimatecreator/session/shared/resolve
  purpose:
  resolve reusable shared BusinessOS session for deeplink entry

# ============================================================
# 3. ESTIMATE CORE ENDPOINTS
# ============================================================

- POST /estimatecreator/estimates
  purpose:
  create estimate

- GET /estimatecreator/estimates
  purpose:
  list estimates

- GET /estimatecreator/estimates/{estimate_id}
  purpose:
  load estimate detail

- PATCH /estimatecreator/estimates/{estimate_id}/header
  purpose:
  update estimate header

- PUT /estimatecreator/estimates/{estimate_id}/lines
  purpose:
  replace estimate lines

# ============================================================
# 4. MEMO ENDPOINTS
# ============================================================

- PUT /estimatecreator/estimates/{estimate_id}/opportunity-memo
  purpose:
  update opportunity memo

- PUT /estimatecreator/estimates/{estimate_id}/meeting-memo
  purpose:
  update meeting memo

# ============================================================
# 5. SHARE ENDPOINTS
# ============================================================

- POST /estimatecreator/share/request
  purpose:
  create app-internal share request

- POST /estimatecreator/share/revoke
  purpose:
  revoke app-internal share

# ============================================================
# 6. ERP PUBLICATION ENDPOINTS
# ============================================================

- POST /estimatecreator/publication/erp/request
  purpose:
  submit ERP rough estimate publication request

- GET /estimatecreator/publication/erp/result/{estimate_id}
  purpose:
  refresh ERP publication result

# ============================================================
# 7. INVENTORY ENDPOINTS
# ============================================================

- POST /estimatecreator/inventory/reference/request
  purpose:
  request inventory reference refresh

# ============================================================
# 8. PREMIUM / ENTITLEMENT ENDPOINTS
# ============================================================

- POST /estimatecreator/premium/entitlement/resolve
  purpose:
  resolve premium entitlement state

# ============================================================
# 9. TEMPLATE ENDPOINTS
# ============================================================

- POST /estimatecreator/templates/apply
  purpose:
  apply template to estimate

# ============================================================
# 10. QA ENDPOINTS
# ============================================================

- POST /estimatecreator/qa
  purpose:
  create QA

- PATCH /estimatecreator/qa/{qa_id}
  purpose:
  update QA

# ============================================================
# 11. LOCAL / SYNC SUPPORT ENDPOINTS
# ============================================================

- POST /estimatecreator/sync/queue/enqueue
  purpose:
  enqueue pending operation

- POST /estimatecreator/sync/queue/replay/start
  purpose:
  start queue replay

- GET /estimatecreator/sync/queue/replay/result/{pending_operation_id}
  purpose:
  load replay item result

- GET /estimatecreator/sync/push/result
  purpose:
  load sync push result

- GET /estimatecreator/sync/pull/result
  purpose:
  load sync pull result

- POST /estimatecreator/sync/conflict/resolve
  purpose:
  submit conflict resolution

# ============================================================
# 12. OWNERSHIP RULE
# ============================================================

Endpoint responsibilities must remain explicit.

Do not collapse:
- entry/session
- core estimate
- memo
- share
- publication
- inventory
- premium
- local/sync

into one ambiguous action surface.

