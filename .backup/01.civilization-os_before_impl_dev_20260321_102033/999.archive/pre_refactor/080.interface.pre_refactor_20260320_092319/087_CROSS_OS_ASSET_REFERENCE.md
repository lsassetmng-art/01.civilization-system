# ============================================================
# CROSS OS ASSET REFERENCE
# ============================================================

status: canonical
version: 1.0
compatibility: STRICT
scope: civilization.interface.asset_reference
component: cross-os-asset-reference
document_id: CIV-INT-087
owner: Boss
prepared_by: Zero
last_updated: 2026-03-11


# PURPOSE

Defines how assets may be referenced
across OS boundaries.


# ASSET TYPES

Assets may originate from
multiple domains.

Examples

persona assets
streaming assets
game assets
visual assets
voice assets
world assets


# ASSET OWNERSHIP

Each OS owns the storage and lifecycle
of its assets.

Example

PersonaOS
    persona textures
    character layers

StreamingOS
    streaming avatars
    overlays

GameOS
    game models
    world objects


# CROSS OS ACCESS

Assets may be referenced
across OS boundaries.

However

ownership never transfers.


# REFERENCE MODEL

OS A
   ↓ reference
OS B asset


Example

PocketSecretary
   ↓
Persona asset reference


# SECURITY RULE

Assets must never be copied
implicitly between OS domains.

Access must be

explicit
permissioned
auditable


# DESIGN PRINCIPLE

Asset ownership remains
with the originating OS.

Other OS domains
may only reference assets.
