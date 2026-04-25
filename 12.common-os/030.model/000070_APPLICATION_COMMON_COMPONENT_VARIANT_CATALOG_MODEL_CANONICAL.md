# APPLICATION COMMON COMPONENT VARIANT CATALOG MODEL CANONICAL

status: canonical
system: CommonOS
layer: model
schema_candidate: app_common

## Purpose
This document defines the canonical metadata model for application common component variants.

## Main entities
- component_variant_catalog
- component_variant_rule
- component_slot_rule

## component_variant_catalog role
Each variant record describes a presentation difference for a known component family.

## Required fields for component_variant_catalog
- id
- component_variant_code
- component_code
- variant_name
- variant_group
- density_mode
- emphasis_mode
- state_mode
- viewport_hint
- accessibility_note
- is_default
- is_active
- created_at
- updated_at

## Variant examples
- button.primary
- button.secondary
- button.destructive
- button.ghost
- input.default
- input.compact
- input.erp_dense
- card.standard
- card.record
- panel.sync
- panel.conflict

## variant_group examples
- tone
- density
- state
- viewport
- emphasis

## Variant rule
Variants may change presentation, density, emphasis, responsiveness, or visible state treatment. Variants must not encode business authority.

## Slot-rule direction
component_slot_rule may define allowed named slots for a component family or variant, such as:
- header
- footer
- actions
- status
- body
- thumbnail
