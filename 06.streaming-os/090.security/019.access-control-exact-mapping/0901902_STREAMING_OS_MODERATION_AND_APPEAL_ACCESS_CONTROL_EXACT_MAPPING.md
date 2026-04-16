# ============================================================
# STREAMING OS MODERATION AND APPEAL ACCESS CONTROL EXACT MAPPING
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
- report submission
- comment moderation
- appeal submission
- re-review handling
- restoration decisions

# ============================================================
# 2. READ RULES
# ============================================================

report_record_read:
- allowed:
  - reporting subject for their own submitted report status where policy allows
  - assigned moderator / operator
  - platform operator with moderation authority
- denied:
  - arbitrary viewers
  - unrelated creators

comment_moderation_state_read:
- allowed:
  - moderator/operator
  - comment owner only for visible user-facing outcome subsets where policy allows
  - affected creator/channel owner for moderation outcome subsets where policy allows
- denied:
  - arbitrary raw-state inspection by public viewers

appeal_record_read:
- allowed:
  - appeal submitter
  - assigned moderator / reviewer
  - platform operator with moderation authority
- denied:
  - arbitrary viewers
  - unrelated creators

restoration_record_read:
- allowed:
  - assigned moderator / reviewer
  - affected party for outcome visibility subset where policy allows
  - platform operator with moderation authority
- denied:
  - arbitrary raw-state inspection by public viewers

# ============================================================
# 3. WRITE RULES
# ============================================================

report_submit:
- allowed:
  - authenticated reporting subject
  - system-assisted actor if future trusted automation path is explicitly defined
- denied:
  - anonymous untrusted mutation path unless later policy explicitly allows

comment_moderation_update:
- allowed:
  - assigned moderator
  - platform operator with moderation authority
  - system runtime worker only for state propagation after authorized decision
- denied:
  - content owner by default unless granted moderation role
  - arbitrary creators/viewers

appeal_submit:
- allowed:
  - affected party
  - explicit delegated representative only if policy later allows
- denied:
  - arbitrary unrelated subjects

restoration_decision_update:
- allowed:
  - assigned moderator / reviewer
  - platform operator with restoration authority
- denied:
  - affected party directly
  - arbitrary creators/viewers

# ============================================================
# 4. STRONG DECISION RULE
# ============================================================

Strong moderation and restoration outcomes
must require moderation or restoration authority,
not mere content ownership.

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

Moderation and appeal access control
shall separate:
- reporting authority
- moderation authority
- appeal authority
- restoration decision authority

These are related but not interchangeable.

