# ============================================================
# STREAMWATCH CACHE AND RECOVERY OPERATIONS
# ============================================================

status: canonical-draft
layer: operations
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines operational handling for metadata cache, continuity cache, and degraded recovery paths.

## 2. Cache Domains

Cacheable viewer-side domains may include:

- category tree projection
- recent history preview
- continue watching preview
- recent search context
- subtitle and audio preference
- library preview shells

## 3. Recovery Priorities

On degraded cache or sync mismatch, recover in this order:

1. entitlement and watchability correctness
2. active playback correctness
3. resume correctness
4. library preview correctness
5. discovery convenience caches

## 4. Important Rule

Cache should improve speed, not become the authoritative source of viewer truth.
