# ============================================================
# STREAMING OS ARCHIVE AND CLIP FLOW
# ============================================================

status: canonical-draft
system: streaming-os
domain: archive-and-clip-flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow defines how post-live assets are created
and made available inside StreamingOS.

# ============================================================
# 2. PRIMARY ARCHIVE FLOW
# ============================================================

Recommended archive flow:

live session ended
-> archive generation requested
-> archive asset enters generating state
-> archive generation succeeds or fails
-> archive_ready state established if successful
-> review states checked
-> asset becomes publish candidate if approved

# ============================================================
# 3. CLIP DERIVATION FLOW
# ============================================================

Recommended clip flow:

source session or archive identified
-> clip derivation requested
-> source linkage preserved
-> clip offsets or derivation context recorded
-> clip enters draft or ready state
-> review states checked
-> clip becomes publish candidate if approved

# ============================================================
# 4. GOVERNANCE FLOW
# ============================================================

At any relevant point:
- publication block may apply
- hidden state may apply
- lock may apply
- suspension may apply

Governance restriction does not erase asset existence.

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

This flow shall preserve the distinction between:
- session end
- archive generation
- clip derivation
- review readiness
- governance restriction
- publication candidacy

