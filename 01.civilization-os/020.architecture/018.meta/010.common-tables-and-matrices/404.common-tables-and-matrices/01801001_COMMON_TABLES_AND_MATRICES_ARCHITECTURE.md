# ============================================================
# COMMON TABLES AND MATRICES ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: common-tables-and-matrices
component: common-tables-and-matrices

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for shared code tables,
parameter tables,
permission matrices,
and common UI matrices
inside Civilization.

# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Repeated control families
must be normalized into explicit tables or matrices.

These families include:

- codes
- thresholds
- parameter tiers
- role permissions
- screen and route conventions

# ============================================================
# 3. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- CODE_TABLE_ARCHITECTURE
- PARAMETER_TABLE_ARCHITECTURE
- ROLE_AND_PERMISSION_MATRIX_ARCHITECTURE
- UI_COMMON_MATRIX_ARCHITECTURE

# ============================================================
# 4. FINAL RULE
# ============================================================

Common tables and matrices architecture must remain:

- reusable
- normalized
- explicit
- cross-domain-compatible
