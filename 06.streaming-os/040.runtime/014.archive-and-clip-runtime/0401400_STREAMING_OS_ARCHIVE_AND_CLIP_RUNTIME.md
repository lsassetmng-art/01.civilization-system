# ============================================================
# STREAMING OS ARCHIVE AND CLIP RUNTIME
# ============================================================

status: canonical-draft
system: streaming-os
domain: archive-and-clip-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. RUNTIME PURPOSE
# ============================================================

This runtime governs execution-time handling
of archive and clip assets.

# ============================================================
# 2. PRIMARY RESPONSIBILITIES
# ============================================================

The archive and clip runtime is responsible for:
- triggering archive generation after session end
- validating archive readiness
- supporting clip derivation
- preserving source linkage
- exposing review readiness
- observing governance restrictions

# ============================================================
# 3. ARCHIVE GENERATION
# ============================================================

Runtime should:
- receive archive generation handoff from session runtime
- create generation task or equivalent state
- persist generating / ready / failed meaning
- avoid assuming success until asset readiness is explicit

# ============================================================
# 4. CLIP DERIVATION
# ============================================================

Runtime should:
- support clip creation from session or archive context
- preserve source linkage
- preserve clip offset meaning if available
- preserve clip readiness separately from archive readiness

# ============================================================
# 5. REVIEW AWARENESS
# ============================================================

Runtime should observe:
- rights review
- safety review
- company approval state
- publish readiness state

Review readiness should remain separate from asset existence.

# ============================================================
# 6. GOVERNANCE AWARENESS
# ============================================================

Runtime must observe:
- publication block
- hidden flag
- locked flag
- suspended flag

Governance restriction must not erase canonical asset existence.

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

The archive and clip runtime
shall generate,
derive,
and preserve asset meaning
while keeping asset existence,
review readiness,
and governance restriction
as distinct runtime meanings.

