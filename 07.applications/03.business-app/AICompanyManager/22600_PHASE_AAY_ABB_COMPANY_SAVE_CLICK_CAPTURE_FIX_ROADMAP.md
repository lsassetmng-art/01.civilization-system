# AICompanyManager Phase AAY-ABB Company Save Click Capture Fix Roadmap

## Problem
The company save confirmation does not appear after pressing the company add/change button.

## Likely cause
The previous browser client used exact button matching and normal bubbling click listeners.
The rendered UI may use different labels, input/button variants, or existing handlers.

## Fix
Use a document-level capture-phase click listener to detect company add/change actions before app-local handlers consume the event.

## Safety
- DB WRITE: NOT EXECUTED by this script
- API SAVE: NOT EXECUTED by this script
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
