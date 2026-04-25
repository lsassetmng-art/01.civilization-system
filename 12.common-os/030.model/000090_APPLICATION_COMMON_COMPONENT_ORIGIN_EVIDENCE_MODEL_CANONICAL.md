# APPLICATION COMMON COMPONENT ORIGIN EVIDENCE MODEL CANONICAL

status: canonical
system: CommonOS
layer: model
schema_candidate: app_common

## Purpose
This document defines how CommonOS records origin-side evidence for application common component families.

## Main entities
- component_origin_reference
- component_origin_review_reference
- component_reflection_reference

## Required fields for component_origin_reference
- id
- component_code
- origin_system_code
- origin_area_path
- origin_document_name
- origin_family_name
- evidence_strength
- second_consumer_present
- notes
- created_at
- updated_at

## evidence_strength examples
- weak
- moderate
- strong

## Origin-system examples
- staticart_os
- business_os
- life_os
- streaming_os
- erp

## Reflection rule
Origin evidence supports CommonOS review and reflection, but does not replace CommonOS canonical ownership.
