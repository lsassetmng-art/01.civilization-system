# AICompanyManager Phase ABK-ABN Company Save Event Capture Hard Fix Roadmap

## Problem
Company DB registration/change confirmation does not appear.

## Cause candidates
- The rendered final submit element may not be a normal button.
- The UI may use form submit instead of click.
- Mobile browser may trigger pointer/touch handlers before click.
- The previous detection was still too narrow.

## This phase
Capture company save intent from:
- click
- pointerup
- touchend
- submit

## Production rule
- 新規追加 is navigation only.
- Company form submit is save.
- Company name must exist before save.

## Safety
- DB WRITE: NOT EXECUTED
- API SAVE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
