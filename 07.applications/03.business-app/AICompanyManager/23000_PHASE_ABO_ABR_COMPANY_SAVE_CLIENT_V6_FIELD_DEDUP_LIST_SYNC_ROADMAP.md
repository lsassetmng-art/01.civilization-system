# AICompanyManager Phase ABO-ABR Company Save Client V6 Roadmap

## Problems
1. Business domain is incorrectly read as company name.
2. Canceling the confirmation can show the confirmation again.
3. Saved companies do not appear in the change target selector.

## Fix
- Use ordered company form inputs:
  - first text input: company_name
  - second text input/textarea: business_domain
  - label match still has priority when reliable
- Lock duplicate event handling across touchend/pointerup/click/submit.
- Store saved company in browser localStorage and inject it into company selectors.

## Safety
- DB WRITE: NOT EXECUTED by this script
- API SAVE: NOT EXECUTED by this script
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
