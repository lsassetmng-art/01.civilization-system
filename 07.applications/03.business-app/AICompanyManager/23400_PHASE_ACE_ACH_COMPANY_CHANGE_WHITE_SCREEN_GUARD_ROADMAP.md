# AICompanyManager Phase ACE-ACH Company Change White Screen Guard Roadmap

## Problem
Pressing 会社を変更 still causes a white screen.

## Cause
A legacy native submit / onclick / prior save client path is still winning before the stable handler.

## Fix
Install an earliest document-capture guard script before other company scripts:
- intercept 会社を変更
- preventDefault / stopPropagation / stopImmediatePropagation
- block native submit
- run only the current-company update handler
- block 会社を削除 safely
- remove bogus company selector option

## Safety
- DB WRITE: NOT EXECUTED by this patch script
- API SAVE: NOT EXECUTED by this patch script
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
