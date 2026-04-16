# ============================================================
# ESTIMATE TEMPLATE LINE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_template_line stores reusable line definitions
attached to an estimate template.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- template_line_id
- template_id
- line_no
- item_name
- description
- default_quantity
- default_unit_name
- default_unit_price
- default_tax_category
- sort_order

# ============================================================
# 3. ROLE
# ============================================================

These lines do not directly become authoritative estimate lines.

They are source material for draft generation
when a user applies a template.

