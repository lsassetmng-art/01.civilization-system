# ============================================================
# STREAMING OS STREAMING PRINCIPAL MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: streaming-principal-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. MODEL PURPOSE
# ============================================================

This model defines canonical ownership-side records for streams.

# ============================================================
# 2. CORE RECORDS
# ============================================================

Primary records:
- streaming_principal
- performer_participation
- stream_rights_holder
- stream_primary_revenue_beneficiary
- stream_secondary_distribution_reference

# ============================================================
# 3. STREAMING_PRINCIPAL
# ============================================================

Recommended meanings:
- streaming_principal_id
- stream_principal_civilization_id
- stream_principal_type
  - individual
  - group
  - company
  - ai_human
- stream_principal_status
  - pending
  - active
  - suspended
  - banned
  - archived
- stream_principal_origin_type
  - native
  - imported_existing
  - system_generated
- stream_principal_display_name
- affiliation_civilization_id
  nullable
- company_official_stream_capable_flag
- created_at
- updated_at

# ============================================================
# 4. PERFORMER_PARTICIPATION
# ============================================================

Recommended meanings:
- performer_participation_id
- session_id
- performer_subject_kind
  - individual
  - group
  - company_representative
  - ai_human
  - persona
  - ai_robot
- performer_civilization_id
  nullable
- performer_persona_id
  nullable
- performer_ai_robot_id
  nullable
- performer_role
  - host
  - co_host
  - guest
  - narrator
  - operator
  - singer
  - avatar_actor
  - support
- performer_affiliation_civilization_id
  nullable
- performer_participation_status
  - scheduled
  - active
  - removed
  - blocked
  - completed
- participation_note
- created_at
- updated_at

# ============================================================
# 5. RIGHTS HOLDER
# ============================================================

Recommended meanings:
- stream_rights_holder_id
- session_id
- primary_rights_holder_civilization_id
- rights_holder_type
  - individual
  - group
  - company
  - ai_human
- rights_holder_override_flag
- rights_holder_override_reason
  nullable
- created_at
- updated_at

# ============================================================
# 6. PRIMARY REVENUE BENEFICIARY
# ============================================================

Recommended meanings:
- stream_primary_revenue_beneficiary_id
- session_id
- primary_revenue_beneficiary_civilization_id
- primary_revenue_beneficiary_type
  - individual
  - group
  - company
  - ai_human
- revenue_beneficiary_override_flag
- revenue_beneficiary_override_reason
  nullable
- created_at
- updated_at

# ============================================================
# 7. SECONDARY DISTRIBUTION REFERENCE
# ============================================================

Recommended meanings:
- stream_secondary_distribution_reference_id
- session_id
- secondary_distribution_rule_id
  nullable
- secondary_distribution_mode
  - none
  - performer_based
  - employee_based
  - department_based
  - partner_based
  - custom
- secondary_distribution_status
  - none
  - pending
  - applicable
  - partially_processed
  - completed
  - cancelled
- distribution_note
  nullable
- created_at
- updated_at

# ============================================================
# 8. DEFAULT RELATIONS
# ============================================================

Default relations:
- rights holder defaults to stream principal
- primary revenue beneficiary defaults to stream principal
- performer participation does not override either by default

# ============================================================
# 9. CORPORATE STREAM DEFAULT
# ============================================================

For corporate official streams:
- stream principal = company
- rights holder = company
- primary revenue beneficiary = company

# ============================================================
# 10. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve explicit records for:
- stream principal
- performer participation
- primary rights holder
- primary revenue beneficiary
- secondary distribution reference

Ownership and participation shall not be collapsed.

