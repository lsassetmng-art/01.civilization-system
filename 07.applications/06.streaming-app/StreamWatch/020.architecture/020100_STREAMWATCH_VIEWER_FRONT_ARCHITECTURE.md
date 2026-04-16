# ============================================================
# STREAMWATCH VIEWER FRONT ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the high-level viewer-front architecture of StreamWatch.

## 2. Architectural Role

StreamWatch sits at the viewer product layer.
It converts canonical StreamingOS content, continuity, and entitlement states into actual viewer surfaces.

## 3. High-Level Composition

The viewer-front architecture is composed of:

- home and discovery surfaces
- category-tree surfaces
- search and result surfaces
- playback surfaces
- library surfaces
- follow and notification surfaces
- restriction gate surfaces
- commerce and entitlement CTA surfaces
- TV route and handoff surfaces

## 4. Primary Entry Domains

### 4.1 Discovery domain
Home, search, category tree, following, and recommendation entry.

### 4.2 Playback domain
Live, archive, clip, and full-length playback entry.

### 4.3 Continuity domain
History, progress, continue watching, queue, series continuity, and playlist continuity.

### 4.4 Commerce-watchability domain
Locked-content CTA switching, purchase execution, rental execution, membership join execution, and entitlement refresh.

### 4.5 Device domain
Cast routes, TV targets, same-device large-screen mode, and route handoff state.

## 5. Device-Class Behavior

### Mobile
Fast discovery, fast resume, cast-first behavior, compact library entry.

### Tablet
Split-view friendly browsing and playback coexistence.

### Desktop
Search-heavy discovery and richer side-panel support.

### TV / large screen
10-foot UX, route-aware playback, reduced typing dependence, focus-driven navigation.

## 6. Architectural Rule

The viewer-front layer must remain thin with respect to canonical truth ownership, but rich with respect to viewer experience orchestration.

## 7. Final Architecture Statement

StreamWatch is a viewer orchestration layer built on top of StreamingOS truth, shared commerce execution, and device-route capability.
