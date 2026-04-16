# CX22073JW Multilingual / Term Dictionary Area
- project: CX22073JW
- document_type: data-area-design
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This area manages multilingual display, term aliasing, and locale-aware naming.

## 2. Main Role
- locale management
- translation key/value management
- term alias dictionary
- locale-specific display names
- cross-app wording consistency

## 3. Candidate Tables
- `locale_master`
- `translation_key_master`
- `translation_text`
- `term_alias_dictionary`
- `display_name_locale_variant`

## 4. Main Consumers
- all apps
- Portal
- MealPlanner
- LegalSupport

## 5. Why It Belongs in CX22073JW
This area is reusable, cross-app, and reference-oriented.
It should not be redefined separately in each app.

## 6. Priority
High
