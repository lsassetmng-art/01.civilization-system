# AICompanyManager Phase AAU-AAX Company Save Route First Roadmap

## Current problem
Robot placement save was being connected before the company save route was canonical.
This caused fallback company IDs, unstable select behavior, and inconsistent save results.

## Canonical production order
1. Save company first.
2. Confirm DB company_id.
3. Save President placement under that company_id.
4. Save department.
5. Save Manager placement under department_id.
6. Save section.
7. Save Leader / Worker placement under section_id.

## This phase
- Add BusinessOS DB company save API.
- Add browser client for 会社を追加 / 会社を変更.
- Remove active role-button DB save client behavior for now.
- Keep robot placement write API available but not bound from UI in this phase.

## Safety
- DB WRITE: ROLLBACK ONLY
- API WRITE: ROLLBACK SMOKE ONLY
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED

## Reviewer
- 佐藤（DB担当）レビュー対象
