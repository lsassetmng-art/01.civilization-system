# ============================================================
# PERSONA PACKAGE COMPOSITION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for package item and package composition handling.

required_fields:
- package_code
- item_ref or composition_code
- source_component_code
- composition basis where applicable
- correlation_id

compatibility_rule:
Package composition interfaces must remain package-aware and component-aware.
