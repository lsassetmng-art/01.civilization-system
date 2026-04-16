# ============================================================
# STREAMING OS NUMBERING AND NAMING CHECKLIST
# ============================================================

status: canonical-meta
system: streaming-os
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This checklist confirms numbering and naming consistency
after large-scale expansion.

# ============================================================
# 2. CHECK ITEMS
# ============================================================

check_items:
- folder numbering is unique within each layer
- domain names are descriptive and non-overlapping
- file prefixes align with folder numbering
- overview / index / integrated naming is consistent
- freeze docs use stable wording such as:
  - executable-ddl-freeze
  - final-api-freeze
  - final-rls-and-auth-freeze
  - final-scheduler-binding-freeze
- platform / international wording is stable such as:
  - multilingual
  - multi-currency
  - nation-aware currency display
  - iPhone
  - Android
  - PC
  - tablet

# ============================================================
# 3. FAILURE SIGNS
# ============================================================

failure_signs:
- inconsistent singular/plural domain wording
- conflicting file prefixes
- old and new naming mixed without reason
- same concept named differently across freeze docs
- device/platform wording varies unnecessarily across summaries
- currency wording flips between canonical money meaning and display money meaning without clarification

