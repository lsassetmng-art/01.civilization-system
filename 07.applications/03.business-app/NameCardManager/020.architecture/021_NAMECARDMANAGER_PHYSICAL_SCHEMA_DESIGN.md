# ============================================================
# NAMECARDMANAGER PHYSICAL SCHEMA DESIGN
# ============================================================

status: canonical
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the physical schema design before actual database execution.

# ============================================================
# 1. DATABASE POSITIONING
# ============================================================

- NameCardManager is a BusinessOS application.
- This document fixes table-level physical design only.
- No database execution is performed in this phase.

# ============================================================
# 2. SCHEMA NAME
# ============================================================

Recommended schema:
- business

# ============================================================
# 3. TABLE LIST
# ============================================================

1. namecard_record
2. namecard_detail_profile
3. namecard_order_history
4. namecard_share_target
5. namecard_app_share_link
6. namecard_erp_publish_setting
7. namecard_pending_operation
8. namecard_relationship
9. namecard_erp_publication_request
10. namecard_erp_publication_result
11. namecard_approval_event
12. namecard_audit_log
13. namecard_history_entry

# ============================================================
# 4. MAIN DESIGN RULES
# ============================================================

- logical delete is adopted
- updated_at is automatically maintained
- canonical_version exists on main record
- summary state and per-target detail are separated
- audit/history/approval are separated
- ERP publication request/result are separated
- shared BusinessOS publication boundary is explicit

# ============================================================
# 5. MAIN TABLE NOTES
# ============================================================

namecard_record:
- canonical record
- sync/app-share/ERP-publication summary states
- logical delete by deleted_at

namecard_detail_profile:
- one profile per namecard
- extended person and responsibility notes

namecard_order_history:
- multiple entries per namecard
- stores order/business history

namecard_share_target:
- configured app-internal share targets

namecard_app_share_link:
- per-namecard per-target app share detail

namecard_erp_publish_setting:
- ERP eligibility and publication configuration

namecard_pending_operation:
- offline operation queue

namecard_relationship:
- explicit and supported relationship links

namecard_erp_publication_request:
- request handed to shared BusinessOS publication capability

namecard_erp_publication_result:
- result returned from shared BusinessOS publication capability

namecard_approval_event:
- approval-side events distinct from final publication result

namecard_audit_log:
- detailed auditable records

namecard_history_entry:
- user-facing summarized history

# ============================================================
# 6. NON-GOALS AT THIS PHASE
# ============================================================

Not yet fixed here:
- exact RLS policy
- exact trigger implementation text
- exact RPC / API implementation
- exact storage bucket design
- exact retention policy

