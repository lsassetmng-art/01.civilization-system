# ============================================================
# ANDROID FILE TEMPLATE RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what each file template should contain at creation time.

entity_template:
- package declaration
- class declaration
- primary fields
- identity fields
- updated_at and state fields where needed

dao_template:
- package declaration
- interface
- insert/update/upsert methods
- query methods for primary screen flows

repository_template:
- interface or implementation declaration
- constructor dependencies
- primary methods only
- TODO markers for remote linkage if deferred

viewmodel_template:
- State data class reference
- Event sealed structure reference
- Effect sealed structure reference
- init/load entry point
- event dispatcher
- reducer/update helper
- repository call TODO markers

screen_template:
- package declaration
- screen binding/composable/fragment skeleton
- state rendering entry
- event dispatch entry
- navigation/effect collector placeholder

principles:
- first templates should be thin but structurally correct
- TODO markers are acceptable if boundary is explicit
