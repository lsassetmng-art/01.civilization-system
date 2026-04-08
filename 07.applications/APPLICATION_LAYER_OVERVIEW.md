# ============================================================
# APPLICATION LAYER OVERVIEW
# ============================================================

status: canonical
layer: application
system: civilization-system

owner: Boss
prepared_by: Zero


# PURPOSE

Define the Application layer of Civilization System.

Applications are end-user products built on top of OS layers.

Applications may integrate multiple OS components.


# ARCHITECTURE POSITION

Civilization System

Constitution
Architecture
Runtime
OS Layers
Application Layer


Applications use OS services but do not modify OS.


# APPLICATION CHARACTERISTICS

Applications:

- integrate multiple OS systems
- define user interaction flows
- implement product features
- may store application-specific data


# EXAMPLES

PocketSecretary
CreatorStudio
GamePlatform
StreamingStudio


# RULE

Applications must declare:

used_os
used_schema
integration targets
runtime dependencies


# ============================================================
# ESTIMATE CREATOR
# ============================================================

EstimateCreator is an independent application under 07.applications.

Primary role:

- rough estimate creation
- offline estimate drafting
- opportunity memo handling
- meeting memo handling
- app-internal sharing to preconfigured users
- ERP rough estimate publication request
- ERP inventory reference lookup
- premium-gated structured meeting memo / QA / estimate template features

Common capability alignment:

- sharing follows the same common pattern as NameCardManager
- sync follows the same common pattern as NameCardManager
- ERP publication follows the shared BusinessOS publication path


# ============================================================
# ESTIMATECREATOR DUAL ENTRY
# ============================================================

EstimateCreator supports two equally valid primary entry paths:

- standalone launch
- deeplink launch

For standalone launch,
EstimateCreator may use its own login-capable entry.

For deeplink launch,
EstimateCreator reuses authenticated BusinessOS session context
from the calling application and does not require redundant login UI
when that shared session is valid.

This shared-session reuse does not bypass:

- session validation
- authorization checks
- company/workspace context validation
- premium entitlement checks where required

