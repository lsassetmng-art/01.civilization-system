# ============================================================
# BUSINESS AI WORKER VALIDATION MATRIX FIXED
# ============================================================

status: canonical
layer: implementation
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed validation matrix
for Business AI Worker foundation-side decision making.

# ============================================================
# 1. COMMON DECISION OUTPUTS
# ============================================================

possible_decisions:
- granted
- queued
- rejected
- blocked

meaning:
granted:
Request may proceed immediately.

queued:
Request is valid but no compatible immediate capacity exists.

rejected:
Request is invalid, unauthorized, or impossible under current policy.

blocked:
Request is structurally valid,
but cannot proceed until a prerequisite such as disclaimer,
consent, review, or approval is satisfied.

# ============================================================
# 2. LENDING REQUEST VALIDATION
# ============================================================

validation_matrix_lending:

- condition: company_id missing
  decision: rejected
  code: policy_rejected

- condition: requested_rank invalid
  decision: rejected
  code: rank_not_available

- condition: requested_activity_mode invalid
  decision: rejected
  code: policy_rejected

- condition: requested_world_scope invalid
  decision: rejected
  code: world_scope_mismatch

- condition: requested_specialty missing where required
  decision: rejected
  code: specialty_mismatch

- condition: requested_knowledge_depth_min invalid
  decision: rejected
  code: policy_rejected

- condition: consumer app surface not authorized
  decision: rejected
  code: unauthorized_app_surface

- condition: company subscription missing for requested rank
  decision: rejected
  code: company_not_subscribed

- condition: subscribed plan exists but rank not available
  decision: rejected
  code: rank_not_available

- condition: compatible worker exists and compatible free capacity exists
  decision: granted
  code: granted

- condition: compatible worker exists but no compatible free capacity exists and queue allowed
  decision: queued
  code: queued

- condition: compatible worker exists but queue full
  decision: rejected
  code: queue_full

- condition: no compatible worker exists for specialty / depth / world scope
  decision: rejected
  code: worker_unavailable

# ============================================================
# 3. RESERVATION REQUEST VALIDATION
# ============================================================

validation_matrix_reservation:

- condition: request is invalid by the same structural checks as lending
  decision: rejected
  code: policy_rejected

- condition: queue allowed and request is otherwise valid
  decision: granted
  code: reservation_created

- condition: queue not allowed by policy
  decision: rejected
  code: policy_rejected

- condition: queue full
  decision: rejected
  code: queue_full

# ============================================================
# 4. DISCLAIMER FETCH VALIDATION
# ============================================================

validation_matrix_disclaimer:

- condition: consultation_type is medical
  decision: blocked
  code: disclaimer_required

- condition: consultation_type is legal
  decision: blocked
  code: disclaimer_required

- condition: consultation_type is high-risk management advice
  decision: blocked
  code: disclaimer_required

- condition: consultation_type is non-protected advisory
  decision: granted
  code: availability_checked

# ============================================================
# 5. CONSENT SUBMIT VALIDATION
# ============================================================

validation_matrix_consent:

- condition: disclaimer version missing for protected consultation
  decision: rejected
  code: policy_rejected

- condition: accepted = false
  decision: blocked
  code: consent_missing

- condition: accepted = true and disclaimer version valid
  decision: granted
  code: consent_recorded

# ============================================================
# 6. ADVISORY START VALIDATION
# ============================================================

validation_matrix_advisory_start:

- condition: lending_id missing or invalid
  decision: rejected
  code: policy_rejected

- condition: lending exists but activity_mode != advisory_consultation
  decision: rejected
  code: policy_rejected

- condition: protected consultation and disclaimer not fetched
  decision: blocked
  code: disclaimer_required

- condition: protected consultation and consent missing
  decision: blocked
  code: consent_missing

- condition: specialty mismatch with granted worker
  decision: rejected
  code: specialty_mismatch

- condition: advisory prerequisites all valid
  decision: granted
  code: advisory_started

# ============================================================
# 7. EXECUTION START VALIDATION
# ============================================================

validation_matrix_execution_start:

- condition: lending_id missing or invalid
  decision: rejected
  code: policy_rejected

- condition: lending exists but activity_mode != execution_work
  decision: rejected
  code: policy_rejected

- condition: task_type missing
  decision: rejected
  code: policy_rejected

- condition: platform_target required but missing
  decision: rejected
  code: policy_rejected

- condition: specialty mismatch with granted worker
  decision: rejected
  code: specialty_mismatch

- condition: execution prerequisites valid
  decision: granted
  code: execution_started

# ============================================================
# 8. RELEASE VALIDATION
# ============================================================

validation_matrix_release:

- condition: lending_id missing or invalid
  decision: rejected
  code: policy_rejected

- condition: lending already released
  decision: granted
  code: released

- condition: active lending exists and release is valid
  decision: granted
  code: released

# ============================================================
# 9. STATUS QUERY VALIDATION
# ============================================================

validation_matrix_status_query:

- condition: no query identifiers provided
  decision: rejected
  code: policy_rejected

- condition: identifiers provided but record not accessible in company scope
  decision: rejected
  code: policy_rejected

- condition: matching record found
  decision: granted
  code: status_found

# ============================================================
# 10. OUTPUT HANDOFF VALIDATION
# ============================================================

validation_matrix_output_handoff:

- condition: execution_task_id missing or invalid
  decision: rejected
  code: policy_rejected

- condition: execution task not in a handoff-capable state
  decision: rejected
  code: policy_rejected

- condition: output prepared and review_required = true and review not yet completed
  decision: blocked
  code: policy_rejected

- condition: output prepared and approval_required = true and approval not yet granted
  decision: blocked
  code: approval_denied

- condition: output prepared and all gated requirements satisfied
  decision: granted
  code: handoff_ready

# ============================================================
# 11. REVIEW_REQUIRED DECISION MATRIX
# ============================================================

review_required_matrix:

- condition: output is customer-facing
  review_required: true

- condition: output is externally visible
  review_required: true

- condition: output is financially meaningful
  review_required: true

- condition: output is a patch proposal
  review_required: true

- condition: output is a marketplace listing intended for use
  review_required: true

- condition: output is a protected advisory summary intended for action
  review_required: true

- condition: output is internal-only low-risk draft
  review_required: false

# ============================================================
# 12. APPROVAL_REQUIRED DECISION MATRIX
# ============================================================

approval_required_matrix:

- condition: external publication
  approval_required: true

- condition: real-world execution
  approval_required: true

- condition: production-affecting technical action
  approval_required: true

- condition: finalized money-impacting action
  approval_required: true

- condition: protected output used for real decision handoff
  approval_required: true

- condition: internal-only draft with no execution
  approval_required: false

# ============================================================
# 13. CAPACITY / MATCHING MATRIX
# ============================================================

capacity_matching_matrix:

- condition: free slot + compatible worker + allowed policy
  decision: granted
  code: granted

- condition: no free slot + compatible worker + queue allowed
  decision: queued
  code: queued

- condition: free slot exists but no compatible worker
  decision: rejected
  code: worker_unavailable

- condition: compatible worker exists but world scope not allowed
  decision: rejected
  code: world_scope_mismatch

- condition: compatible worker exists but specialty mismatch
  decision: rejected
  code: specialty_mismatch

# ============================================================
# 14. PROTECTED DOMAIN MATRIX
# ============================================================

protected_domain_matrix:

- consultation_type: medical
  disclaimer_required: true
  consent_required: true
  auto_execute_allowed: false

- consultation_type: legal
  disclaimer_required: true
  consent_required: true
  auto_execute_allowed: false

- consultation_type: high-risk management advice
  disclaimer_required: true
  consent_required: true
  auto_execute_allowed: false

- consultation_type: erp_consulting
  disclaimer_required: false
  consent_required: false
  auto_execute_allowed: false

# ============================================================
# 15. PUBLICATION / REAL-WORLD ACTION MATRIX
# ============================================================

publication_real_world_matrix:

- action_type: marketplace_publish
  review_required: true
  approval_required: true
  direct_ai_publish_default: false

- action_type: yahoo_auctions_publish
  review_required: true
  approval_required: true
  direct_ai_publish_default: false

- action_type: mercari_publish
  review_required: true
  approval_required: true
  direct_ai_publish_default: false

- action_type: night_maintenance_execution
  review_required: false
  approval_required: true
  direct_ai_execution_default: false unless pre-authorized narrow scope exists

- action_type: production_patch_apply
  review_required: true
  approval_required: true
  direct_ai_execution_default: false

# ============================================================
# 16. OFFICIAL SUMMARY
# ============================================================

Validation must produce exactly one of:
- granted
- queued
- rejected
- blocked

Blocked is used only when a valid request is waiting
for a prerequisite such as disclaimer, consent, review, or approval.

Rejected is used when the request itself is invalid,
unauthorized, or impossible under current policy.
