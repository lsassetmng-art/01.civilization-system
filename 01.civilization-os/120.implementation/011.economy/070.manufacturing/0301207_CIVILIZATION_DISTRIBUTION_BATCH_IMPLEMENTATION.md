# ============================================================
# CIVILIZATION DISTRIBUTION BATCH
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical distribution batch storage.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- manufacturing_distribution_batch

# 4. COLUMNS

Common columns:
- id
- status
- trace_id
- created_at
- updated_at

Domain columns:
- source_owner_ref
- destination_ref
- item_ref
- batch_quantity
- dispatch_at
- delivered_at

# 5. KEYS AND CONSTRAINTS

PK:
- id

Indexes:
- idx_manufacturing_distribution_batch_source_owner_ref
- idx_manufacturing_distribution_batch_destination_ref
- idx_manufacturing_distribution_batch_item_ref
- idx_manufacturing_distribution_batch_status

Checks:
- batch_quantity > 0

# 6. SOURCE OF TRUTH

Authoritative distribution batch transaction row.
