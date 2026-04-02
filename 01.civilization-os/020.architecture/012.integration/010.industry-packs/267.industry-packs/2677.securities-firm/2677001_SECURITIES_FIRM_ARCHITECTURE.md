# ============================================================
# SECURITIES FIRM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: industry-pack
component: securities-firm

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for securities_firm.

securities_firm is a system-limited company type
that intermediates equity-related execution and account handling.


# ============================================================
# 2. CORE RULE
# ============================================================

securities_firm is system company only.

It is the mandatory intermediary for:
- normal equity execution
- TOB tender processing
- block trade execution
- offering subscription processing


# ============================================================
# 3. FINAL RULE
# ============================================================

No company may directly execute equity market interaction
outside securities_firm routing.
