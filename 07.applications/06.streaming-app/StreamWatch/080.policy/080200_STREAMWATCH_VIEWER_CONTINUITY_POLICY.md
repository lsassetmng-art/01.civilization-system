# ============================================================
# STREAMWATCH VIEWER CONTINUITY POLICY
# ============================================================

status: canonical-draft
layer: policy
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines continuity behavior across history, progress, continue watching, queue, playlist, and series contexts.

## 2. Core Rule

Continuity must be interpreted through viewer_profile.

## 3. Continuity Ordering Rule

When deciding what should play next, StreamWatch should prioritize:

1. explicit watch queue
2. explicit playlist order
3. series order
4. related fallback

## 4. Continue Watching Rule

Continue watching should contain only valid in-progress targets and must exclude completed targets.

## 5. History Rule

History records watched fact even when resume is no longer relevant.

## 6. Final Policy Rule

Continuity is a policy system, not only a UI convenience strip.
