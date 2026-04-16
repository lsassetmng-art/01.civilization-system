# CX22073JW Compatibility / Restriction Area
- project: CX22073JW
- document_type: data-area-design
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This area manages compatibility, exclusion conditions, caution messages, and disclaimers.

## 2. Main Role
- audience compatibility rules
- restriction tags
- exclusion logic
- caution templates
- disclaimer templates

## 3. Candidate Tables
- `compatibility_rule_master`
- `restriction_tag_master`
- `audience_exclusion_rule`
- `caution_template`
- `disclaimer_template`

## 4. Main Consumers
- MealPlanner
- TrainingCoach
- LegalSupport

## 5. Why It Belongs in CX22073JW
These are reusable applicability and explanation controls, not per-user runtime state.

## 6. Priority
Medium-High
