# AICompanyManager Phase ABG-ABJ Company Final Form Detection Fix Roadmap

## Problem
After strict submit fix, the final add button in the company form does not show save confirmation.

## Cause
The final form button is likely labeled "追加", not "会社を追加".
The previous phase excluded bare "追加" globally to avoid catching navigation buttons.

## Correct rule
- 新規追加: navigation only, no save.
- 会社名 form + 追加: company create/save.
- 会社名 form + 変更: company update/save.
- Dashboard/list/card buttons remain excluded.

## Safety
- DB WRITE: NOT EXECUTED
- API SAVE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
