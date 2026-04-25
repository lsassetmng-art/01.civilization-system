# ============================================================
# STATIC ART OS UI SOURCE SKELETON INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file defines the initial UI source skeleton layout for
StaticArtOS implementation.

source_root:
  - 123.ui-implementation-prep/source-skeleton/staticart-ui

main_units:
  - contracts
  - navigation
  - state
  - components/common
  - components/creator
  - components/marketplace
  - components/library
  - components/admin
  - screens/creator
  - screens/marketplace
  - screens/library
  - screens/admin

implementation_objective:
  - Freeze screen/component/state boundaries
  - Keep creator / marketplace / library / admin separated
  - Keep loading / empty / error / forbidden reusable
  - Keep reader continuity and viewer continuity separated

important_rules:
  - Screen files do not embed transport or storage logic
  - Components do not fetch canonical data directly
  - State decides loading/error/forbidden rendering
  - Product detail uses allowed_actions as UI truth source
  - Reader and Viewer remain separate surfaces
