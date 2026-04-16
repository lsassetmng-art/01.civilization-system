# ============================================================
# STREAMING OS CREATOR PLATFORM ACCESS CONTROL EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: access-control-exact-mapping
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SCOPE
# ============================================================

This mapping covers:
- creator self page
- studio drafts
- upload preparation
- creator settings
- creator analytics snapshots
- publish preparation actions

# ============================================================
# 2. READ RULES
# ============================================================

creator_self_page_detail:
- allowed:
  - same creator_civilization_id
  - authorized company-side overseer when creator is company-owned or company-affiliated and policy allows
  - platform operator with explicit operational authority
- denied:
  - arbitrary viewers
  - unrelated creators

studio_draft_read:
- allowed:
  - draft owner creator_civilization_id
  - authorized company-side overseer when company policy allows
  - platform operator with explicit support authority
- denied:
  - public viewers
  - unrelated creators

creator_settings_read:
- allowed:
  - same creator_civilization_id
  - platform operator with explicit support authority
- denied:
  - public viewers
  - unrelated creators

creator_analytics_snapshot_read:
- allowed:
  - same creator_civilization_id
  - authorized company-side overseer where ownership/affiliation policy allows
  - platform operator with explicit analytics support authority
- denied:
  - public viewers
  - unrelated creators

# ============================================================
# 3. WRITE RULES
# ============================================================

studio_draft_upsert:
- allowed:
  - draft owner creator_civilization_id
  - delegated company-side manager for official company-owned stream workflows when policy allows
- denied:
  - public viewers
  - unrelated creators

upload_preparation_update:
- allowed:
  - creator owner
  - system runtime worker
  - delegated company-side manager where ownership policy allows
- denied:
  - public viewers
  - unrelated creators

creator_settings_update:
- allowed:
  - same creator_civilization_id
  - platform operator only for explicit support/debug correction paths
- denied:
  - other creators
  - public viewers

publish_request_submit:
- allowed:
  - creator owner
  - delegated official company manager when stream is company-owned
- denied:
  - public viewers
  - unrelated affiliated participants by default

# ============================================================
# 4. SPECIAL DISTINCTION RULE
# ============================================================

Affiliated participation alone
does not grant creator self-management authority
over official company-owned creator structures by default.

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

Creator platform access control
shall be owner-bound by default,
with limited delegated company oversight
and explicit operator support authority only where required.

