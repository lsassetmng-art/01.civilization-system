# APP_COMMON ACTIVE EFFECTIVE POLICY CANONICAL

status: canonical
system: CommonOS
layer: policy
schema: app_common

## Purpose
This document defines how active flags and effective windows are interpreted for app_common reviewed canonical metadata.

## Canonical interpretation
A row is publish-eligible only when:
- review_status is reviewed
- is_active is true
- effective_from is null or now() >= effective_from
- effective_to is null or now() < effective_to

## Practical rules
- inactive rows are not treated as publish-eligible
- future-effective rows are valid design records but not yet active for broad use
- expired rows remain historical records, not active records
- deprecated rows may coexist with newer reviewed rows during transition

## Versioning interaction
A new version is normally introduced as a new row with:
- same logical code
- higher version_no
- its own effective window

Older rows should not be destructively overwritten when historical trace matters.

## Policy warning
Do not treat effective window as domain business validity. It is metadata publication validity only.
