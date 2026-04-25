# ============================================================
# STREAMWATCH DECISION LOG
# ============================================================

status: canonical-meta
layer: meta
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document records major fixed decisions made during StreamWatch design freezing.

## 2. Major Fixed Decisions

- StreamWatch is the official viewer-front app
- mobile primary navigation is Home / Category / Search / Library / Following
- continuity is resolved through viewer_profile
- favorites and watch later are phase-1 protected playlist interpretations
- category browsing is canonical tree-based
- progress and history are separate
- route handoff and HDMI mode are separate
- both Civilization and StreamWatch may execute commerce actions
- StreamingOS remains canonical for entitlement and watchability
