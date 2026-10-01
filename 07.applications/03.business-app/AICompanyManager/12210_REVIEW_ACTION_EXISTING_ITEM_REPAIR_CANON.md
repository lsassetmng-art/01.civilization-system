# AICompanyManager review action existing item repair canon

## Target
- REVIEW_ACTION_TABLE: business.aicm_review_action
- REVIEW_ITEM_TABLE: business.aicm_review_item
- REVIEW_ACTION_ID: 00000000-0000-4000-8000-1eac71000001

## Rule
This phase may write review_action only.
It must not create review_item.

## If no existing review_item exists
The phase must fail without DB write and wait for explicit Boss approval:

review item + review action OK
