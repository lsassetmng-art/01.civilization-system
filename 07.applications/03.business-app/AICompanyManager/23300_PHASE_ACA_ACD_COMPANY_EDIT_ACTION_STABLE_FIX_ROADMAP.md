# AICompanyManager Phase ACA-ACD Company Edit Action Stable Fix Roadmap

## Current status
- Top AI企業選択 can select ウルフ.
- Company overview can reflect ウルフ.

## Problems
- A bogus option "company / 会社" appears in the company selector.
- Pressing 会社を変更 can blank the page.
- 会社削除 must not execute until soft-delete design is fixed.

## This phase
- Remove bogus company selector options.
- Convert company edit/delete buttons to type=button.
- Add stable company edit action handler using current company context.
- Stop delete action with a safety message.

## Safety
- DB WRITE: NOT EXECUTED by this script
- API SAVE: NOT EXECUTED by this script
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
