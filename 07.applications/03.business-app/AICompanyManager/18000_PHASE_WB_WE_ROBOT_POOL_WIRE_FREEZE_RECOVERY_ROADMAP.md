# AICompanyManager Phase WB-WE robot_pool wire freeze recovery roadmap

## Phase
- WB-WE

## Problem
After BusinessOS DB-backed robot_pool wire, Android Chrome select started blinking/freezing.
Also select showed BusinessOS DB候補なし.

## Likely causes
- wire JS repeatedly rewrote select options while select was focused/open.
- MutationObserver + interval + click handlers caused too many apply cycles.
- role matching was too strict for actual BusinessOS DB rows.

## This phase
- Replace frontend wire with stable one-shot mode.
- Do not rewrite a select while it is focused.
- Do not use interval polling.
- Do not use MutationObserver subtree loop.
- Fetch API once on page load and once after screen button click.
- Preserve current selected local value if DB candidates are empty.
- Broaden role matching safely.
- Keep BusinessOS diagnostic panel removal.
- Restart local UI/API server.
- Capture API body for candidate diagnosis.

## Not executed
- DB write
- DB DDL
- RLS apply
- API write
- main UI JS change
- quantity consumption
