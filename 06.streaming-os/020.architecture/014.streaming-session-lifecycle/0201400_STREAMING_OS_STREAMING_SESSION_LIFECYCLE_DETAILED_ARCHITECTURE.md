# ============================================================
# STREAMING OS STREAMING SESSION LIFECYCLE DETAILED ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: streaming-session-lifecycle
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the lifecycle architecture
of streaming sessions in StreamingOS.

This document focuses on:
- session state meaning
- session state transitions
- archive generation relation
- publication readiness relation
- monetization opening relation
- lock / stop / closure interpretation

# ============================================================
# 2. DESIGN POSITION
# ============================================================

A streaming session is the canonical runtime unit
of an actual broadcast event.

A session is not only "live now" or "finished".
It must move through explicit lifecycle states
that preserve operational, publication, monetization,
and governance meaning.

# ============================================================
# 3. SESSION DEFINITION
# ============================================================

A streaming session is a concrete execution instance
of a planned or spontaneous stream.

A session belongs to:
- a channel
- optionally a program
- one explicit stream principal
- one explicit ownership mode

A session may also carry:
- performer participation
- audience events
- archive assets
- clip assets
- tipping events
- external publication jobs
- governance events

# ============================================================
# 4. BASE SESSION STATES
# ============================================================

Recommended canonical session states:

- draft
- scheduled
- ready
- pre_live_check
- live
- paused
- interrupted
- ended
- archive_generating
- archive_ready
- rights_review_pending
- publish_ready
- pushing_external
- externally_published
- monetization_open
- settlement_pending
- settled
- locked
- suspended
- cancelled
- archived

# ============================================================
# 5. STATE MEANINGS
# ============================================================

draft:
session exists but is not yet ready for execution.

scheduled:
session is planned for a future time.

ready:
session is operationally ready to start.

pre_live_check:
session is undergoing final pre-live validation.

live:
session is currently broadcasting.

paused:
session is temporarily paused but intended to resume.

interrupted:
session was unexpectedly interrupted.

ended:
live broadcast execution has ended.

archive_generating:
archive asset generation is in progress.

archive_ready:
archive asset exists and is canonically available.

rights_review_pending:
post-live rights or publication review is pending.

publish_ready:
asset may proceed to external publication flow.

pushing_external:
publication push is in progress.

externally_published:
external publication result succeeded.

monetization_open:
session-linked monetization interpretation is open.

settlement_pending:
downstream financial closure is pending.

settled:
session-linked financial interpretation reached closure.

locked:
session is frozen from normal modification.

suspended:
session is restricted by governance action.

cancelled:
session will not proceed as planned.

archived:
session is historically retained as closed record.

# ============================================================
# 6. PRIMARY TRANSITION PATH
# ============================================================

Recommended normal transition path:

draft
-> scheduled
-> ready
-> pre_live_check
-> live
-> ended
-> archive_generating
-> archive_ready
-> rights_review_pending
-> publish_ready
-> pushing_external
-> externally_published

Monetization interpretation may proceed in parallel or after:
live / ended / archive_ready
-> monetization_open
-> settlement_pending
-> settled

Final historical closure may lead to:
externally_published or settled
-> locked
-> archived

# ============================================================
# 7. ALTERNATIVE TRANSITION PATHS
# ============================================================

Alternative paths include:

draft -> cancelled

scheduled -> cancelled

ready -> cancelled

live -> paused -> live

live -> interrupted -> live

live -> interrupted -> ended

ended -> archive_generating -> archive_ready -> locked

archive_ready -> rights_review_pending -> locked

publish_ready -> pushing_external -> locked
if blocked during execution review

any state -> suspended
when governance action requires restriction

# ============================================================
# 8. STATE TRANSITION RULES
# ============================================================

A session must not jump arbitrarily
between unrelated states.

Examples:
- draft must not directly become externally_published
- scheduled must not directly become settled
- live must not directly become archived
- cancelled must not re-enter live without explicit reopen policy

State transitions should preserve operational meaning.

# ============================================================
# 9. PRE-LIVE VALIDATION RULE
# ============================================================

Before entering live,
StreamingOS should confirm at least:

- valid stream principal
- valid ownership mode
- required performer assignment integrity
- no principal suspension
- no blocking governance issue
- technical readiness if relevant
- policy eligibility if relevant

This justifies the explicit pre_live_check state.

# ============================================================
# 10. POST-LIVE ARCHIVE RULE
# ============================================================

After live ends,
archive generation should be treated explicitly.

Reasons:
- archive may fail to generate
- archive may take time
- archive may require review
- archive readiness is separate from live completion

Therefore:
ended does not automatically mean archive_ready.

# ============================================================
# 11. PUBLICATION READINESS RULE
# ============================================================

An archive-ready session is not automatically publish-ready.

Publication readiness requires:
- archive asset existence
- rights interpretation resolved
- review requirements satisfied
- no suspension or block
- external publication conditions satisfied

This is why
archive_ready and publish_ready
must remain separate states.

# ============================================================
# 12. MONETIZATION OPEN RULE
# ============================================================

Monetization interpretation may begin
before or after live end,
depending on product policy.

However,
monetization_open should explicitly mean:
- tip events and revenue interpretation
  are allowed to accumulate or remain active
- primary beneficiary meaning is active
- downstream distribution reference may begin

This state does not imply settlement completion.

# ============================================================
# 13. LOCK RULE
# ============================================================

locked means:
- normal editing is no longer allowed
- core ownership meaning is frozen
- state remains readable for audit and history
- exceptional governance override may still exist

Locking protects history integrity.

# ============================================================
# 14. SUSPENSION RULE
# ============================================================

suspended means:
- session is restricted by governance action
- publication may be blocked
- monetization may be held
- editing or visibility may be reduced
- archival history remains preserved

Suspension is not deletion.

# ============================================================
# 15. ARCHIVAL RULE
# ============================================================

archived means:
- session is historically retained
- live operations are closed
- governance visibility may remain
- monetization interpretation may already be finalized
  or separately referenced

Archived is a historical closure state,
not a disappearance state.

# ============================================================
# 16. SESSION LIFECYCLE FIELDS
# ============================================================

Recommended fields:

- session_id
- channel_id
- program_id
- stream_principal_civilization_id
- ownership_mode
- session_state
- scheduled_start_at
- actual_start_at
- actual_end_at
- archive_generation_status
- rights_review_status
- external_publish_status
- monetization_status
- settlement_status
- suspension_flag
- lock_flag
- archived_flag

# ============================================================
# 17. GOVERNANCE INTERPRETATION
# ============================================================

When interpreting a session lifecycle,
StreamingOS governance must answer:
- did the session actually go live
- did it complete normally
- is an archive canonically present
- was publication allowed
- was monetization allowed
- was settlement completed
- was the session ever suspended or locked

# ============================================================
# 18. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS shall manage streaming sessions
through explicit lifecycle states.

Live execution, archive readiness,
publication readiness,
monetization openness,
settlement closure,
and governance restriction
must remain distinguishable meanings.

A session ending does not automatically mean:
- archive readiness
- publication readiness
- monetization completion
- historical archival closure

Suspension and locking shall preserve
canonical session history rather than erase it.

# ============================================================
# 19. CURRENT SCOPE CLOSURE
# ============================================================

This document fixes:
- session lifecycle state meanings
- primary transition structure
- archive / publish / monetization separation
- lock / suspend / archive meanings

The following remain outside this scope:
- exact scheduler implementation
- exact stream runtime engine design
- exact UI interaction detail
- exact recovery worker logic
