# ============================================================
# STREAM STUDIO OPERATIONS
# ============================================================

status: upgraded-draft
layer: operations
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the operational model of StreamStudio.

# 1. REQUIRED RUNTIME JOBS

- upload ingest finalizer
- media processing status poller
- subtitle packaging job
- publish readiness evaluator
- scheduled publish executor
- marketplace listing readiness evaluator
- scheduled listing executor
- membership rule activation job
- member early-access expiration job
- entitlement reconciliation job
- commerce settlement reference sync job
- external push dispatcher
- external push retry job
- split confirmation reminder
- stale approval expiration job
- audit reconstruction bundle builder
- notification fanout job

# 2. FAILURE HANDLING

Every failure must be visible as one of:
- retryable failure
- terminal failure
- policy-blocked failure
- approval-blocked failure
- rights-blocked failure
- pricing-blocked failure
- membership-rule-blocked failure
- entitlement-sync failure

# 3. DEAD-LETTER PRINCIPLE

Terminal connector failures, terminal publish failures,
and terminal listing failures must never disappear.
They must remain visible in explicit failed-state surfaces.

# 4. AUDIT RECONSTRUCTION

A sellable or member-gated asset must reconstruct from:
- source asset ref
- draft version
- approval request and decision
- publish request
- listing draft and activation event
- access policy binding
- membership rule binding when applicable
- external push result when applicable
- split version when monetization applies

# 5. NOTIFICATION CATEGORIES

- upload completed
- upload failed
- revision requested
- approval requested
- approval decided
- publish scheduled
- publish succeeded
- publish failed
- listing scheduled
- listing succeeded
- listing failed
- membership rule conflict
- split confirmation required
- external push failed
