# ============================================================
# STATIC ART OS PERSONA REFERENCE ACCESS CONTROL AND AUDIT EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define access control and audit exactness for Persona reference data
inside StaticArtOS.

core_boundary:
- display-safe projection is broadly readable where product policy allows
- internal reflection endpoints are privileged only
- mutable Persona truth is never editable here because it does not exist here

# ------------------------------------------------------------
# 1. ACCESS TIERS
# ------------------------------------------------------------

access_tiers:
  public_display_read:
    may_access:
      - display-safe public projection only
    may_not_access:
      - internal audit fields unless separately permitted
      - upstream Persona canonical truth

  creator_or_owner_read:
    may_access:
      - creator persona reference summary
      - current signed snapshot reference metadata
      - local view config
    may_not_access:
      - upstream mutable Persona truth
      - privileged reflection internals beyond allowed audit view

  admin_or_audit_read:
    may_access:
      - source_event_id
      - result_code
      - expires_at
      - projection freshness metadata
    may_not_access:
      - upstream Persona canonical hidden state not replicated into StaticArtOS

  privileged_internal_reflection:
    may_access:
      - internal result reflection endpoints
    may_not_access:
      - general public invocation
      - ad hoc external caller mutation

# ------------------------------------------------------------
# 2. WRITE ACCESS RULES
# ------------------------------------------------------------

write_access_rules:
  local_view_config_write:
    allowed_for:
      - authorized local actor under product policy
    limited_to:
      - presentation-only keys

  reflection_write:
    allowed_for:
      - privileged internal integration path only
    limited_to:
      - official result event reflection only

  forbidden_writes:
    - Persona core write
    - Persona state write
    - Persona growth write
    - Persona memory write
    - Persona signature canonical write
    - Persona rights canonical write

# ------------------------------------------------------------
# 3. AUDIT RULES
# ------------------------------------------------------------

audit_rules:
- every reflected authoritative result must remain traceable by source_event_id
- every local_view_config update should be attributable by updated_by_actor_id if available
- stale/expired/restricted transitions should be explainable from stored metadata
- audit visibility must not be confused with Persona ownership

# ------------------------------------------------------------
# 4. SECURITY JUDGEMENT
# ------------------------------------------------------------

security_judgement:
- StaticArtOS access model is read-safe, reflection-privileged, and mutation-restricted
- Persona truth remains protected by absence of local ownership and endpoint prohibition
