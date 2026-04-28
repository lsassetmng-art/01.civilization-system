# AICompanyManager Phase WZ-XC payload preview details toggle repair roadmap

## Problem
The compact payload preview uses native details/summary for JSON.
However, the preview script schedules re-render on document click.
When the user taps "詳細JSONを表示", the details opens and is immediately replaced by re-rendered HTML, so JSON appears not to open.

## This phase
- Do not schedule preview re-render when click happens inside payload preview.
- Preserve details open state when preview is re-rendered.
- Bump script query string to avoid stale browser cache.
- Keep compact preview.
- Keep preview-only safety.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
- main UI JS change
