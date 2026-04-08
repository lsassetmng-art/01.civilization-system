# ============================================================
# STREAMER AGENCY REVENUE MIRROR REF
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 012.integration

# 1. PURPOSE

Defines mirrored revenue reference records between streaming and commerce-related surfaces.

# 2. STORAGE

- revenue_mirror_ref_id
- source_sale_ref
- revenue_type
- seller_ref
- agency_ref
- mirror_status
- settlement_ref

# 3. EXECUTION

1. capture eligible sale
2. generate mirrored revenue reference
3. attach settlement linkage
4. expose to downstream accounting/reporting consumers

# 4. FAILURE HANDLING

Fail closed on missing source sale, settlement ambiguity, or duplicate mirror generation.
