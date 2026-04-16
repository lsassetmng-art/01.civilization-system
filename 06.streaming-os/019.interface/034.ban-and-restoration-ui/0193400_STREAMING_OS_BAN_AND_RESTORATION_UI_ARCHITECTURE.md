# ============================================================
# STREAMING OS BAN AND RESTORATION UI ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: ban-and-restoration-ui
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the UI architecture
for strong restriction and restoration handling in StreamingOS.

# ============================================================
# 2. UI GOAL
# ============================================================

The UI must support:
- ban / suspension / lock visibility
- target-scope visibility
- restriction reason visibility
- restoration request visibility
- restoration decision visibility
- history preservation visibility

# ============================================================
# 3. MAIN SCREEN BLOCKS
# ============================================================

Recommended blocks:
- restricted targets list
- restriction detail panel
- restriction reason panel
- restoration request panel
- restoration decision panel
- history panel

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

The ban and restoration UI
shall expose strong restriction states
and restoration states explicitly
without collapsing them into deletion-only behavior.

