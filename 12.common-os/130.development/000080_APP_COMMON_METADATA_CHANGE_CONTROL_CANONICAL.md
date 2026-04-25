# APP_COMMON METADATA CHANGE CONTROL CANONICAL

status: canonical
system: CommonOS
layer: development
schema: app_common

## Purpose
This document defines how app_common metadata changes must be introduced.

## Core rule
Prefer additive change over destructive mutation.

## Change control rules
- add new rows or new versions before retiring old rows
- avoid destructive overwrite of historically meaningful reviewed records
- document meaning-changing updates
- keep logical code stable where family identity is stable
- use version_no to express reviewed canonical evolution
- keep active / effective transitions explicit

## Not allowed without strong reason
- silent meaning changes on active rows
- direct destructive replacement without transition plan
- mixing internal draft content into published active rows
- using metadata change as a backdoor for domain business canon

## Required notes for significant changes
- what changed
- why it changed
- compatibility impact
- rollout intent
- deprecation effect, if any
