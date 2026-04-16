# ============================================================
# STATIC ART RUNTIME OVERVIEW
# ============================================================

status: canonical-overview
layer: runtime
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Runtime Objective

StaticArtOS runtime must resolve whether a user can discover, open, read, view, favorite, bookmark, or project an asset based on policy, entitlement, asset type, and current publication status.

## 2. Runtime Inputs

- asset lifecycle state
- rights state
- subscription state
- ownership state
- regional policy
- age policy
- asset type
- platform type
- download availability
- current version visibility

## 3. Runtime Outputs

- marketplace card badges
- product detail actions
- sample-open availability
- full-open availability
- library visibility
- continue reading visibility
- continue viewing visibility
- exhibition projection eligibility
- reason codes for denial

## 4. Runtime Principles

- runtime must resolve from canonical data, not temporary UI assumptions
- runtime must treat ownership and subscription as different entitlement paths
- runtime must block access when policy or rights require blocking
- runtime must preserve allowed continuity data such as progress and bookmarks
- runtime must support platform-aware reader and viewer behavior
