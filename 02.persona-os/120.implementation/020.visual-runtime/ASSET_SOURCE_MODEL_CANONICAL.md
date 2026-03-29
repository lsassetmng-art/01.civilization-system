# ============================================================
# ASSET SOURCE MODEL
# ============================================================

status: canonical
system: Civilization
component: asset-source


PURPOSE

Define asset source abstraction.


SOURCE INTERFACE

AssetSource
 ├ resolve asset
 ├ fetch asset
 └ return file


IMPLEMENTATIONS

SupabaseAssetSource
LocalFileAssetSource
CacheAssetSource


RULE

Rendering must not depend directly on
storage provider implementation.

