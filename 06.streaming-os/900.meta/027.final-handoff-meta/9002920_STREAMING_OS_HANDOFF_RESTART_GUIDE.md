# ============================================================
# STREAMING OS HANDOFF RESTART GUIDE
# ============================================================

status: canonical-handoff
system: streaming-os
owner: Boss
prepared_by: Zero

# ============================================================
# 1. IF RESTARTING IN A NEW CHAT
# ============================================================

Recommended restart order:

1.
Read root files:
- 000_STREAMING_OS_OVERVIEW.md
- 000_STREAMING_OS_INDEX.md
- 00_STREAMING_OS_INTEGRATED_REBUILT.md

2.
Read precision/freeze summaries:
- 9002300_STREAMING_OS_PRECISION_PROGRESS_SUMMARY.md
- 9002500_STREAMING_OS_FREEZE_PHASE_SUMMARY.md
- 9002800_STREAMING_OS_ROOT_REVIEW_RESULT_SUMMARY.md

3.
Read platform/international interpretation entry points:
- 0100004_STREAMING_OS_PLATFORM_AND_INTERNATIONAL_SUPPORT_ADDITIVE_NOTE.md
- 000_STREAMING_OS_CONSTITUTION_OVERVIEW.md
- 000_STREAMING_ARCHITECTURE_OVERVIEW.md
- 000_STREAMING_INTERFACE_OVERVIEW.md
- 000_STREAMING_MODEL_OVERVIEW.md
- 000_STREAMING_RUNTIME_OVERVIEW.md

4.
Then choose one path:
- design refinement path
- implementation kickoff preparation path

# ============================================================
# 2. DESIGN REFINEMENT PATH
# ============================================================

If continuing design only:
- check final verification pass
- polish naming / numbering if needed
- polish field-level contract names if needed
- polish screen block ordering if needed
- keep multilingual / multi-currency / cross-device wording aligned

# ============================================================
# 3. IMPLEMENTATION KICKOFF PREPARATION PATH
# ============================================================

If preparing eventual implementation:
- start from executable DDL freeze docs
- then final API freeze docs
- then final RLS/auth freeze docs
- then final scheduler binding freeze docs
- then module/package split freeze docs

# ============================================================
# 4. IMPORTANT REMINDER
# ============================================================

Implementation has not started yet.

Do not assume:
- SQL has already been executed
- migrations already exist
- runtime queues already exist
- endpoint transport bindings already exist

Also do not assume
multilingual / multi-currency / cross-device support
is optional;
it is now part of the canonical interpretation.

