# ============================================================
# INVENTORY REFERENCE SCREEN INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Inventory reference screen displays ERP-connected stock reference results
for selected items or estimate lines.

# ============================================================
# 2. PRIMARY UI ELEMENTS
# ============================================================

- item identity
- available quantity
- reserved quantity
- inbound quantity
- checked time
- freshness badge
- cache badge
- retry action

# ============================================================
# 3. REPRESENTATIVE BADGES
# ============================================================

- Fresh
- Cached
- Stale
- Failed
- Unknown

# ============================================================
# 4. UX RULE
# ============================================================

The screen must visually communicate
that the displayed numbers are reference values.

