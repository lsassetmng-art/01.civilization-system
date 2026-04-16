# ============================================================
# STREAMING OS AD MANAGEMENT RUNTIME
# ============================================================

status: canonical-draft
system: streaming-os
domain: ad-management-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. RUNTIME PURPOSE
# ============================================================

This runtime governs execution-time handling
of internal StreamingOS advertisements.

# ============================================================
# 2. PRIMARY RESPONSIBILITIES
# ============================================================

The ad runtime is responsible for:
- resolving active ad candidates
- validating insertion rules
- selecting insertion position
- enforcing ad frequency posture
- creating display events
- respecting governance or monetization restrictions

# ============================================================
# 3. AD CANDIDATE RESOLUTION
# ============================================================

Runtime should resolve:
- active ad data
- matching insertion rules
- target content type compatibility
- target content scope compatibility
- nation / channel / program targeting if used

# ============================================================
# 4. INSERTION EXECUTION
# ============================================================

Runtime should support insertion into:
- live_session
- archive_asset
- clip_asset

Insertion positions may include:
- pre_roll
- mid_roll
- post_roll
- overlay

# ============================================================
# 5. FREQUENCY POSTURE
# ============================================================

Runtime should enforce internal ad burden control
according to StreamingOS ad policy,
using YouTube-equivalent burden posture
as baseline reference.

# ============================================================
# 6. DISPLAY EVENT RECORDING
# ============================================================

Runtime should record:
- ad shown
- ad skipped
- ad blocked
- ad failed

Display history must remain explicit.

# ============================================================
# 7. RESTRICTION AWARENESS
# ============================================================

Runtime must observe:
- governance block
- monetization restriction
- content rights restriction
- company-specific restriction if applicable

# ============================================================
# 8. CANONICAL FIXED STATEMENT
# ============================================================

The ad management runtime
shall select,
insert,
and record internal StreamingOS ads
while preserving the distinction between
ad data,
insertion rule,
and display event.

