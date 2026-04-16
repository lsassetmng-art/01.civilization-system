# ============================================================
# ESTIMATE SHARE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Share implementation must reuse the common BusinessOS sharing pattern.

# ============================================================
# 2. SHAREABLE OBJECTS
# ============================================================

Shareable objects:

- opportunity_memo
- meeting_memo
- rough_estimate

# ============================================================
# 3. REQUIRED IMPLEMENTATION BEHAVIOR
# ============================================================

Implementation should support:

- preconfigured target selection
- share request creation
- revoke request creation
- share result reflection
- offline queueing where allowed

# ============================================================
# 4. PROHIBITION
# ============================================================

Implementation must not create unbounded public sharing
or bypass target validation.

