# AICompanyManager Phase TA-TD robot add UI fallback repair roadmap

## Phase
- TA-TD

## Current issue
Boss reported:
- ロボットが追加できない

## Likely cause
The current actual-use UI was launched through a static localhost UI server.
Robot add persistence/API wiring is not available from that static launcher.

## This phase
- Add a non-destructive UI local fallback robot add panel.
- Keep index.html script count as 1.
- Do not add a second script tag.
- Do not execute DB/API writes.
- Store robot placements in browser localStorage for UI actual-use smoke.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
- persistent robot placement
