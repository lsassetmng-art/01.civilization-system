# AICompanyManager Phase ABW-ABZ Current Company Single Selector UI Fix Roadmap

## Production decision
AI企業選択 is the only current-company selector.

## Problems
- Selecting ウルフ then pressing AI企業を表示 still shows the first company.
- Company edit/delete still has duplicate 変更対象 selector and 読み込み button.
- BusinessOS DB company bind/debug cards are still visible.

## Fix
- Store top AI企業 selection as current company.
- AI企業を表示 uses selected current company.
- Company overview is overwritten with the selected current company.
- Company edit form is populated from selected current company.
- Duplicate edit selector/read button is hidden.
- BusinessOS DB bind and company_id debug cards are hidden.

## Safety
- DB WRITE: NOT EXECUTED
- API SAVE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
