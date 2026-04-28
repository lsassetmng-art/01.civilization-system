# AICompanyManager Phase ZD-ZG remove placement-prefix role shortcut roadmap

## Current state
- President payload: OK.
- Leader payload: OK.
- Worker payload: OK.
- Manager payload incorrectly resolves to Leader / HD-R4.

## Cause
Preview still allows role compatibility when the visible label starts with "Manager配置:".
That prefix is a target label, not role eligibility. Eligibility must be checked only from the "対応:" segment.

## This phase
- Remove placement-prefix shortcut from preview role compatibility.
- Patch guard to validate role compatibility against the "対応:" segment.
- No DB write.
