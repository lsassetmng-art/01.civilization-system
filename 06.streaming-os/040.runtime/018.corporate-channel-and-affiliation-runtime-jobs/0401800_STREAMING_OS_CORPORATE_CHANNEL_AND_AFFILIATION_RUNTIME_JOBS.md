# ============================================================
# STREAMING OS CORPORATE CHANNEL AND AFFILIATION RUNTIME JOBS
# ============================================================

status: canonical-draft
system: streaming-os
domain: corporate-channel-and-affiliation-runtime-jobs
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY JOBS
# ============================================================

Recommended runtime jobs:
- channel_profile_refresh_job
- corporate_oversight_summary_refresh_job
- affiliated_streamer_reference_sync_job
- company_owned_stream_visibility_refresh_job

# ============================================================
# 2. WORKER RESPONSIBILITIES
# ============================================================

Recommended workers:
- channel profile worker
- corporate oversight worker
- affiliation sync worker
- company-owned stream summary worker

# ============================================================
# 3. TRIGGER PRINCIPLE
# ============================================================

Typical triggers:
- channel updated
- oversight note changed
- affiliation status changed
- company-owned stream state changed

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

Corporate-side runtime handling
shall preserve separate jobs for:
- channel profile refresh
- corporate oversight refresh
- affiliation sync
- company-owned stream visibility refresh

