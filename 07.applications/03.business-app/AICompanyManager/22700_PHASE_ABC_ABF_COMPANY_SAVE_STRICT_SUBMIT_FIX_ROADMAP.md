# AICompanyManager Phase ABC-ABF Company Save Strict Submit Fix Roadmap

## Problem
The browser company save client captured "新規追加" as a company save submit action.

## Correct production behavior
- 新規追加: navigate/open new company form only.
- 会社を追加: validate and save company.
- 会社を変更: validate and save company.
- AI企業を表示 / 読み込み / 戻る: no DB save.

## This phase
Tighten company save click detection so only final submit buttons trigger save confirmation.

## Safety
- DB WRITE: NOT EXECUTED
- API SAVE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
