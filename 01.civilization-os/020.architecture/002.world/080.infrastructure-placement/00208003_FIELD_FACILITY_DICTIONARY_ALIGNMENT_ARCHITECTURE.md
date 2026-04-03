# ============================================================
# FIELD FACILITY DICTIONARY ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-facility-dictionary-alignment
component: field-facility-dictionary-alignment

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical alignment architecture
between:

- facility type master
- field facility dictionary
- field facility placement rules
- field facility visibility and interaction rules

This alignment guarantees that
field-map dictionary layers
reuse the same canonical facility identities
without redefining facility meaning.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

The field facility dictionary layer
must not create independent facility identities.

It may only add:

- placement attributes
- zoning compatibility
- visibility attributes
- interaction attributes
- build menu attributes

Canonical identity remains owned by
facility type master.


# ============================================================
# 3. ALIGNMENT RULE
# ============================================================

The following must be inherited
from facility type master:

- facility_type
- primary service_family
- canonical_ui_target
- operator compatibility baseline

The following may be added
by field facility dictionary layers:

- buildable_flag
- placement_scale
- required_zoning_tags
- forbidden_zoning_tags
- visibility_state
- interaction_state
- build_menu_group


# ============================================================
# 4. FINAL RULE
# ============================================================

Field-map facility dictionary
is an alignment and attribute layer,
not a second identity layer.
