# AICompanyManager Phase LN-LQ review action existing item repair roadmap

## Phase
- LN-LQ

## Cause
LI-LL failed because business.aicm_review_action.review_item_id references business.aicm_review_item(review_item_id), and the attempted review_item_id did not exist.

## Boss approval
- review action OK: received

## Scope
- Find an existing review_item.
- If an existing review_item exists, insert exactly one review_action row.
- Do not create review_item in this phase.

## Not approved / not executed
- review_item persistent write
- CSV import
- workflow start
- live AIWorkerOS call
- RLS apply
- API write
- browser fetch write
- git push
