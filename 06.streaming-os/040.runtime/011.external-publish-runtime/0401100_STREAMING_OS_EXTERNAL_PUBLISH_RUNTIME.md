# ============================================================
# STREAMING OS EXTERNAL PUBLISH RUNTIME
# ============================================================

status: canonical-draft
system: streaming-os
domain: external-publish-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. RUNTIME PURPOSE
# ============================================================

This runtime governs execution-time behavior
of external publication jobs.

# ============================================================
# 2. PRIMARY RESPONSIBILITIES
# ============================================================

The external publish runtime is responsible for:
- validating publish job eligibility
- checking review state
- executing target-specific publish action
- recording results
- scheduling retries when allowed
- preserving canonical asset meaning on failure

# ============================================================
# 3. VALIDATION STAGE
# ============================================================

Before publish execution,
runtime should validate:
- asset existence
- asset review readiness
- rights approval state
- governance block absence
- publish setting completeness
- target activity status

# ============================================================
# 4. EXECUTION STAGE
# ============================================================

Runtime should:
- build publish payload
- call target-specific publication pathway
- persist job progress state
- persist result state
- update visibility/result interpretation

# ============================================================
# 5. FAILURE HANDLING
# ============================================================

Runtime should distinguish:
- retryable failure
- non-retryable failure
- blocked failure
- unknown failure

Failure must not erase canonical asset existence.

# ============================================================
# 6. RETRY HANDLING
# ============================================================

When retry is permitted,
runtime should:
- increment attempt count
- set retry_wait state
- schedule next retry
- stop after retry policy exhaustion

# ============================================================
# 7. RESULT PRESERVATION
# ============================================================

Runtime must preserve:
- external video id when available
- result status
- remote error note
- remote warning note
- visibility result
- processing state if known

# ============================================================
# 8. CANONICAL FIXED STATEMENT
# ============================================================

The external publish runtime
shall validate,
execute,
retry,
and record external publication behavior
without replacing canonical StreamingOS asset ownership.

