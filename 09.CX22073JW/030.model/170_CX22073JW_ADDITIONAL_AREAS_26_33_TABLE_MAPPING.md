# CX22073JW Additional Areas 26-33 Table Mapping
- project: CX22073JW
- document_type: additional-areas-table-mapping
- status: implementation-ready-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document maps areas 26-33 to candidate tables.

## 2. Mapping

### 26. Multilingual / Term Dictionary
- `locale_master`
- `translation_key_master`
- `translation_text`
- `term_alias_dictionary`
- `display_name_locale_variant`

### 27. Currency / Amount Reference
- `currency_master`
- `currency_display_rule`
- `locale_currency_preference`
- `currency_rounding_rule`
- `fx_reference_rate`

### 28. Unit / Conversion / Locale
- `unit_category_master`
- `unit_master`
- `unit_conversion_rule`
- `purchasable_unit_reference`
- `locale_unit_preference`

### 29. Jurisdiction / Region Difference
- `jurisdiction_master`
- `region_master`
- `legal_region_requirement`
- `procedure_scope_master`
- `public_office_reference`

### 30. Published Knowledge Catalog / Quality
- `published_knowledge_master`
- `published_knowledge_version`
- `publication_quality_score`
- `publication_visibility_scope`
- `adoption_decision_log`

### 31. Compatibility / Restriction
- `compatibility_rule_master`
- `restriction_tag_master`
- `audience_exclusion_rule`
- `caution_template`
- `disclaimer_template`

### 32. Common Template Fragment
- `checklist_fragment_master`
- `question_intake_template`
- `document_section_template`
- `summary_template_part`
- `guidance_phrase_template`

### 33. Seasonal / Annual Event / Timing
- `season_master`
- `annual_event_master`
- `region_season_binding`
- `timing_window_reference`
- `seasonal_tag_master`

## 3. Immediate Implementation-Ready Scope
The first additive build slice is:
- 26
- 27
- 28
- 29

## 4. Final Rule
26-29 proceed first as implementation-ready candidate.
30-33 remain canonically positioned for the next additive slice.
