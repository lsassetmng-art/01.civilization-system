# ============================================================
# STREAMWATCH CATEGORY TREE ARCHITECTURE
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

This document defines how category-tree discovery is structured and consumed inside StreamWatch.

## 2. Core Rule

Category discovery is implemented as a canonical tree, not as a flat tag or chip filter.

## 3. Required Characteristics

The category tree must support:

- parent-child structure
- branch expansion and collapse
- breadcrumb path visibility
- sibling movement
- remembered last-used path
- mixed node types

## 4. Node Types

The supported node types are:

- genre
- series
- creator
- project
- playlist_group
- personal_library_group

## 5. Interaction Model

The viewer may enter the tree through:

- root navigation
- remembered branch
- search-assisted category jump
- creator or series context
- personal library branch

## 6. Architectural Dependencies

The tree depends on:

- canonical node identity
- parent-child mapping
- active/inactive state
- ordering metadata
- display labels
- optional semantic aliases

## 7. Device Adaptation

### Mobile
Stacked navigation with breadcrumb and selective expansion.

### Tablet/Desktop
Branch and result coexistence where possible.

### TV
Focusable hierarchical navigation without collapsing the tree into a flat list.

## 8. Final Architecture Statement

The category tree is a first-class discovery architecture of StreamWatch and must remain structurally explicit across device classes.
