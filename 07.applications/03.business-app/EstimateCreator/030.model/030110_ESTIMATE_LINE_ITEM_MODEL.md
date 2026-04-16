# ============================================================
# ESTIMATE LINE ITEM MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_line_item represents one priced line
inside an estimate.

It is the detailed pricing unit of the application.

# ============================================================
# 2. CORE POSITION
# ============================================================

estimate_line_item belongs to exactly one estimate revision context.

Line items drive:

- subtotal calculation
- tax calculation
- total calculation
- inventory reference context
- template application materialization

# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

- line_item_id
- estimate_id
- revision_no
- line_no
- item_type
- item_code
- item_name
- description
- quantity
- unit_name
- unit_price
- discount_type
- discount_value
- tax_category
- tax_rate_snapshot
- line_subtotal
- line_tax_amount
- line_total
- inventory_reference_state
- inventory_reference_value
- sort_order
- created_at
- updated_at
- is_deleted

# ============================================================
# 4. ITEM TYPE
# ============================================================

Representative item_type values:

- product
- service
- misc

The model must not assume all lines are stockable goods.

# ============================================================
# 5. DISCOUNT RULE
# ============================================================

discount_type may include:

- none
- percent
- fixed_amount

discount_value interpretation depends on discount_type
and must be runtime-deterministic.

# ============================================================
# 6. TAX RULE
# ============================================================

tax_category and tax_rate_snapshot
must preserve the effective tax interpretation
used at estimate calculation time.

The model must not require future re-derivation
from unknown external defaults.

# ============================================================
# 7. INVENTORY REFERENCE FIELDS
# ============================================================

inventory_reference_state and inventory_reference_value
are support fields only.

They are reference-derived
and must not be treated as authoritative inventory reservation.

Representative inventory_reference_state values:

- none
- cached
- fresh
- stale
- failed

# ============================================================
# 8. SORTING RULE
# ============================================================

sort_order controls visual ordering.

line_no is the semantic line identity within a revision,
while sort_order may support UI rearrangement.

