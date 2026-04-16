# ============================================================
# STREAMING OS EXTERNAL PUBLISH FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: external-publish-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how canonical StreamingOS assets
move downstream into external publication contexts
such as YouTube.

# ============================================================
# 2. PRIMARY FLOW
# ============================================================

Recommended primary flow:

archive or clip asset exists
-> asset review states checked
-> publish settings prepared
-> governance block absence checked
-> publish job created
-> publish validation executed
-> publish pushed to external target
-> result returned
-> publish result recorded
-> retry scheduled if needed
-> final external state surfaced

# ============================================================
# 3. REVIEW GATE FLOW
# ============================================================

Before external publish:
- rights review checked
- safety review checked
- company approval checked when relevant
- publish_ready meaning confirmed

If unresolved,
flow remains blocked before push.

# ============================================================
# 4. FAILURE / RETRY FLOW
# ============================================================

If push fails:
- failure category recorded
- retryability evaluated
- retry_wait scheduled if allowed
- result remains explicit
- canonical asset existence is preserved

# ============================================================
# 5. SUCCESS FLOW
# ============================================================

If push succeeds:
- external video id recorded
- external channel reference recorded
- visibility result recorded
- remote processing state recorded if known

Success does not replace canonical asset ownership.

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- canonical asset existence
- review readiness
- publish job execution
- retry behavior
- external publish result

