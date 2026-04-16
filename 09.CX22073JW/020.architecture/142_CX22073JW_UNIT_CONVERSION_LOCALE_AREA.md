# CX22073JW Unit / Conversion / Locale Area
- project: CX22073JW
- document_type: data-area-design
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This area manages measurement units, conversions, normalization, and locale-specific unit display.

## 2. Main Role
- canonical unit vocabulary
- unit category structure
- conversion rules
- purchasable/display unit mapping
- locale unit preference

## 3. Candidate Tables
- `unit_master`
- `unit_category_master`
- `unit_conversion_rule`
- `purchasable_unit_reference`
- `locale_unit_preference`

## 4. Main Consumers
- MealPlanner
- BodyMetrics
- TrainingCoach

## 5. Why It Belongs in CX22073JW
Units and conversions are reusable reference infrastructure across domains.

## 6. Priority
High
