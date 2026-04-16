# ============================================================
# STREAMWATCH VIEWER FRONT RESPONSIBILITY
# ============================================================

status: canonical-draft
layer: constitution
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the specific viewer-front responsibilities owned by StreamWatch.

## 2. Primary Viewer Responsibilities

StreamWatch owns the viewer-facing responsibility for:

- content entry
- structured discovery
- playback context rendering
- resume and continuity entry
- save and follow behavior
- route handoff entry
- restriction-aware viewer gating
- entitled versus locked content presentation
- viewing-context commercial action entry

## 3. Discovery Responsibilities

StreamWatch must allow discovery through:

- home surfaces
- category tree
- search
- following
- library re-entry
- series and playlist continuity

Discovery is not limited to flat recommendation feeds.

## 4. Playback Responsibilities

StreamWatch must provide:

- playback entry
- watchability-aware CTA resolution
- playback surface behavior
- live and archive differentiation
- clip and full-length differentiation
- progress-aware resume behavior
- route handoff entry
- same-device large-screen mode entry

## 5. Continuity Responsibilities

StreamWatch must preserve or expose:

- continue watching
- watch history
- progress resume
- queue priority
- playlist continuity
- series continuity
- profile-specific viewing separation

## 6. Library Responsibilities

The library domain in StreamWatch must clearly separate:

- favorites
- watch later
- history
- playlists
- following-linked re-entry
- purchased or entitled content visibility

## 7. Profile Responsibilities

StreamWatch must treat viewer_profile as the continuity unit for:

- history
- progress
- recommendations
- subtitle preference
- watch-later interpretation
- favorites interpretation
- restriction behavior
- notification preference context

## 8. Commerce Responsibilities

StreamWatch may:

- quote
- launch buy flow
- execute purchase flow
- execute rental flow
- execute membership join flow
- refresh watchability after success

It must not own canonical billing truth.

## 9. Final Responsibility Statement

StreamWatch owns the viewer-facing product layer where structured discovery, watchability, continuity, and playback become an actual usable experience.
