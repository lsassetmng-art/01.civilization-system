# ============================================================
# PUBLISHER RESPONSIBILITY TRANSFER RECORD
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for PUBLISHER RESPONSIBILITY TRANSFER RECORD.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- publisher_responsibility_transfer_record

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- audit columns
- lifecycle columns

Additional groups:
- trace columns
- period columns
- workflow columns
  - only where applicable

# 5. COLUMNS

- id
- status
- trace_id
- created_at
- updated_at
- source_seller_ref
- target_seller_ref
- product_ref
- transfer_type_code
- decided_at
- completed_at
- source_ref

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- none beyond PK at this layer unless explicitly promoted later

FK:
- soft reference by canonical id/code unless same-domain lifecycle ownership is proven stable

Indexes:
- idx_publisher_responsibility_transfer_record_source_seller_ref
- idx_publisher_responsibility_transfer_record_target_seller_ref
- idx_publisher_responsibility_transfer_record_product_ref
- idx_publisher_responsibility_transfer_record_decided_at
- idx_publisher_responsibility_transfer_record_status

Checks:
- source_seller_ref <> target_seller_ref

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this economy concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid linkage
- lifecycle ambiguity
- invalid amount/rate/value semantics
