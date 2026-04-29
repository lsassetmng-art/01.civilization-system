# AICompanyManager Phase ABW-ABZ Current Company Single Selector UI Fix Report

## Result
- RESULT: PASS

## Production UI decision
- AI企業選択 is now the only current-company selector.
- Company edit/delete uses current company.
- Duplicate 変更対象 selector and 読み込み button are hidden.
- BusinessOS DB company bind/debug id cards are hidden.
- AI企業を表示 reflects the selected company instead of falling back to the first company.

## Implemented
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/js/aicm-current-company-single-selector-ui.js
- Injected into index.html.

## Execution flags
- DB WRITE: NOT EXECUTED
- API SAVE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED

## Manual confirmation
1. Select ウルフ in AI企業選択.
2. Press AI企業を表示.
3. Company overview shows ウルフ.
4. Company edit form shows ウルフ.
5. Company edit form does not show 変更対象 combo.
6. Company edit form does not show 読み込み button.
7. BusinessOS DB会社バインド card is hidden.
8. BusinessOS DB会社ID card is hidden.

## URL
- http://127.0.0.1:8794/?v=20260429_175552_current_company_single_selector
