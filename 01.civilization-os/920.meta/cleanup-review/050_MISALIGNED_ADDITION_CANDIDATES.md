# ============================================================
# MISALIGNED ADDITION CANDIDATES
# ============================================================

status: review
prepared_by: Zero

purpose:
Identify likely misaligned files added in non-model layers
by comparing current layer subdomain/file names against
existing 030.model structure.

rule:
- This report does NOT delete anything.
- It only lists review candidates.
- 030.model is treated as the structural reference.


# ============================================================
# DOMAIN: 002.world
# ============================================================


# ============================================================
# QUICK GREP HINTS
# ============================================================

Use these patterns to inspect files before deleting anything:
- 040_
- 050_
- 060_
- 070_
- 080_
- 100_
- 110_
- 120_
- 130_
