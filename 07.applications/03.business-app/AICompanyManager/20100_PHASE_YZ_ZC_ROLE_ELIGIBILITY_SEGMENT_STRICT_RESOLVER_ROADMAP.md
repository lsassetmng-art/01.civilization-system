# AICompanyManager Phase YZ-ZC role eligibility segment strict resolver roadmap

## Current state
- President payload: OK
- Leader payload: OK
- Worker payload: OK
- Manager payload: validation OK, but robot is Leader / HD-R4

## Cause
The resolver and guard treated the UI label prefix "Manager配置:" as role eligibility.
That allowed a Leader-only option such as HD-R4 to pass for Manager.

## This phase
- Preview resolver: role compatibility must be checked only from the "対応:" segment.
- Guard resolver: valid BusinessOS DB selection must also match the "対応:" segment.
- Manager-compatible options are Manager / ExecutiveManager only.
- Leader-only HD-R4 must not pass Manager.
- No DB write.
