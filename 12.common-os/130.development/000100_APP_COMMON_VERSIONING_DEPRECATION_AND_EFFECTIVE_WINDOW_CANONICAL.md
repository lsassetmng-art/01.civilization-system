# APP_COMMON VERSIONING DEPRECATION AND EFFECTIVE WINDOW CANONICAL

status: canonical
system: CommonOS
layer: development
schema: app_common

## Purpose
This document defines versioning, deprecation, and effective-window discipline for app_common metadata.

## Versioning rules
- preserve logical family identity through code
- use version_no for reviewed canonical revision
- prefer new row for meaningfully changed metadata
- preserve history where it improves auditability and migration clarity

## Deprecation rules
A row may be deprecated when:
- a newer reviewed version supersedes it
- rollout has moved to replacement metadata
- it should remain visible for historical or migration reference

## Retirement rules
A row may be retired when:
- it no longer needs operational visibility
- migration is complete
- no supported surface depends on it

## Effective-window rules
- use effective_from for planned activation
- use effective_to for planned end of active life
- do not use effective windows to model domain business validity
- use them only for metadata publication timing

## Compatibility rule
Where possible, overlap old and new metadata during transition instead of forcing abrupt destructive replacement.
