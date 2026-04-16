# ============================================================
# ANDROID PACKAGE STRUCTURE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android-oriented package structure for QuickForecast.

recommended_package_root:
com.lsam.QuickForecast

recommended_structure:
- app
- core
- feature
- data
- domain
- integration
- common

package_details:

app:
Application bootstrap, navigation entry, top-level configuration.

core:
- auth
- tier
- flags
- state
- validation
- error
- model common

common:
- ui common
- form common
- state badge
- timeline component
- loading / error component
- draft status component

feature.forecast:
- forecast list
- forecast detail
- forecast editor
- scenario compare

feature.action:
- action idea board
- action editor

feature.proposal:
- proposal draft builder
- draft section regeneration controls

feature.profit:
- profit preview
- profit assumption editor

feature.pro:
- share target
- approval submission
- history
- sync status

domain:
- forecast domain
- action domain
- proposal domain
- profit domain
- approval domain
- handoff domain

data:
- local storage
- repository
- dto
- mapper
- cache

integration:
- general signal gateway
- ERP reference gateway
- approval gateway
- handoff gateway
- sync gateway

principles:
- feature-oriented UI separation
- domain separation from UI
- Pro-specific UI isolated from Basic core
- governed integration isolated from local draft logic
