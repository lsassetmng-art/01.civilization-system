# ============================================================
# STREAMING OS MODERATION AND APPEAL RUNTIME JOBS
# ============================================================

status: canonical-draft
system: streaming-os
domain: moderation-and-appeal-runtime-jobs
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY JOBS
# ============================================================

Recommended runtime jobs:
- report_intake_normalization_job
- comment_moderation_state_transition_job
- appeal_queue_dispatch_job
- re_review_restart_job
- restoration_followup_job

# ============================================================
# 2. WORKER RESPONSIBILITIES
# ============================================================

Recommended workers:
- report intake worker
- moderation state worker
- appeal worker
- re-review worker
- restoration worker

# ============================================================
# 3. TRIGGER PRINCIPLE
# ============================================================

Typical triggers:
- report submitted
- moderation decision recorded
- appeal submitted
- re-review accepted
- restoration decision recorded

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

Moderation-side runtime handling
shall preserve separate jobs for:
- report intake
- moderation state transition
- appeal dispatch
- re-review restart
- restoration follow-up

