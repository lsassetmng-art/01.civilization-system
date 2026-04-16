# ============================================================
# ESTIMATE CREATOR PHASE PLAN
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# PHASE 1
# ENTRY / SESSION / CORE ESTIMATE
# ============================================================

Target:
Establish the minimum executable app core.

Scope:
- standalone entry
- login-capable entry
- deeplink entry receive
- shared session validation
- estimate list
- estimate detail
- estimate create/edit
- core local storage

Exit condition:
- app can open from standalone and deeplink
- estimate create/edit works
- session handling is stable

# ============================================================
# PHASE 2
# OFFLINE / SYNC / PENDING OPERATION
# ============================================================

Target:
Make field usage safe.

Scope:
- offline draft persistence
- pending operation queue
- sync state display
- sync replay
- conflict detection
- fail-closed authority behavior

Exit condition:
- offline edits survive restart
- sync replay works
- conflict is explicit

# ============================================================
# PHASE 3
# SHARING / ERP PUBLICATION / INVENTORY REFERENCE
# ============================================================

Target:
Connect EstimateCreator to BusinessOS common capabilities.

Scope:
- preconfigured share target usage
- app-internal sharing
- ERP publication request
- publication result state handling
- inventory reference lookup
- inventory freshness state UI

Exit condition:
- share works through common pattern
- publication works through shared path
- inventory reference is visible as reference-only

# ============================================================
# PHASE 4
# PREMIUM GATE / STRUCTURED FEATURES
# ============================================================

Target:
Enable monetized productivity features safely.

Scope:
- premium entitlement state
- premium lock UI
- structured meeting memo
- QA management
- estimate templates
- downgrade-safe behavior
- offline premium entitlement handling

Exit condition:
- premium-only writes are gated
- downgrade behavior is safe
- deeplink does not bypass premium

# ============================================================
# PHASE 5
# HARDENING / RELEASE READINESS
# ============================================================

Target:
Prepare production-safe release behavior.

Scope:
- audit/history review
- error code review
- validation review
- edge-case session review
- deeplink fallback review
- UI wording review
- release checklist closure

Exit condition:
- release readiness checklist is satisfied
- no authority-sensitive ambiguity remains



# ============================================================
# PHASE 4A
# MULTILINGUAL / DELIVERY EXTENSION
# ============================================================

Target:
Strengthen customer-facing delivery and multilingual utility.

Scope:
- multilingual UI
- customer preferred locale/currency
- PDF export
- email send
- readonly link
- delivery history
- open logs
- customer response record
- business badge extension

Exit condition:
- multilingual UI works
- customer delivery actions work
- delivery/open/response visibility is explicit

