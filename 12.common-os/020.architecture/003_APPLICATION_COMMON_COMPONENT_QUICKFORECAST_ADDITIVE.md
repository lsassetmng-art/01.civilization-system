# ============================================================
# APPLICATION COMMON COMPONENT QUICKFORECAST ADDITIVE CANDIDATES
# ============================================================

status: additive-candidate
layer: application-common-components
domain: quickforecast-additive-candidates
source_application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Adds reusable common-component candidates
identified through QuickForecast design work.

scope_rule:
Only application-crossing reusable parts belong here.
QuickForecast itself does not belong here as a common component.

# ============================================================
# 1. QUICKFORECAST-DERIVED COMMON COMPONENT CANDIDATES
# ============================================================

## 1-1. Forecast Draft Common

purpose:
Provides a reusable forecast hypothesis drafting component
with editable forecast objects and draft lifecycle.

core_capabilities:
- forecast draft creation
- editable forecast state
- forecast draft lifecycle
- review-before-finalization
- reusable draft handling for future-oriented business planning

reusable_for:
- QuickForecast
- planning apps
- proposal-oriented business apps
- estimation support apps

# ------------------------------------------------------------

## 1-2. Scenario Comparison Common

purpose:
Provides a reusable multi-scenario comparison component
for optimistic / standard / pessimistic
or equivalent case structures.

core_capabilities:
- scenario set definition
- side-by-side comparison
- scenario delta visibility
- scenario-based decision support
- multi-case planning support

reusable_for:
- QuickForecast
- planning apps
- estimation apps
- business review apps

# ------------------------------------------------------------

## 1-3. Action Recommendation Common

purpose:
Provides a reusable component
that converts forecast meaning
into candidate business actions.

core_capabilities:
- forecast-to-action conversion
- action candidate list
- action rationale presentation
- recommended next-step drafting
- option comparison support

reusable_for:
- QuickForecast
- proposal support apps
- planning apps
- business consultation apps

# ------------------------------------------------------------

## 1-4. Proposal Draft Builder Common

purpose:
Provides a reusable component
for generating editable proposal drafts
from business context and forecast-derived inputs.

core_capabilities:
- proposal draft generation
- editable proposal structure
- forecast-derived input linkage
- review-before-send workflow
- business draft reuse

reusable_for:
- QuickForecast
- EstimateCreator candidate
- proposal-oriented business apps
- business drafting apps

# ------------------------------------------------------------

## 1-5. Profit Preview Common

purpose:
Provides a reusable component
for previewing revenue, cost,
gross profit, execution cost,
and operating-profit image.

core_capabilities:
- revenue preview
- cost preview
- gross profit preview
- operating profit image
- preview-based decision support

reusable_for:
- QuickForecast
- EstimateCreator candidate
- InvoiceFlow candidate
- business planning apps
- proposal review apps

# ------------------------------------------------------------

## 1-6. Assumption / Basis Common

purpose:
Provides a reusable component
for explicit assumption, basis,
uncertainty, and rationale tracking.

core_capabilities:
- assumption recording
- basis recording
- uncertainty visibility
- rationale trace
- explicit premise review

reusable_for:
- QuickForecast
- planning apps
- proposal apps
- approval / review apps
- forecast-related apps

# ------------------------------------------------------------

## 1-7. Generated Business Draft Common

purpose:
Provides a reusable editable AI-assisted business draft component
for proposal-like and explanation-like documents.

core_capabilities:
- AI-assisted draft generation
- editable business draft state
- explanation-oriented draft support
- proposal-like document support
- review-required draft lifecycle

reusable_for:
- QuickForecast
- EstimateCreator candidate
- business drafting apps
- explanation document apps

# ------------------------------------------------------------

## 1-8. Forecast-to-Proposal Trace Common

purpose:
Provides a reusable trace component
connecting forecast, scenario, action,
proposal, and profit preview lineage.

core_capabilities:
- lineage trace
- forecast-to-scenario connection
- scenario-to-action connection
- action-to-proposal connection
- proposal-to-profit-preview traceability

reusable_for:
- QuickForecast
- proposal support apps
- planning apps
- review / approval apps
- traceability-sensitive business apps

# ============================================================
# 2. EXTRACTION RULE
# ============================================================

extraction_rule:
The source application is QuickForecast,
but QuickForecast itself is not a common component.

Only extracted reusable parts are registered here.

# ============================================================
# 3. REUSE EXPECTATION
# ============================================================

reuse_expectation:
These components are expected to be reusable in:
- proposal-oriented business applications
- estimation-oriented applications
- planning-oriented applications
- review / approval oriented applications
- profit-image preview workflows

# ============================================================
# 4. RELATION TO MAIN COMMON COMPONENT SET
# ============================================================

relation_to_main_common_component_set:
These are additive candidates.
They should be reviewed against:
- Draft / Work-in-progress Common
- Template / Generated Output Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common
- Publication / Versioned Snapshot Common

If overlap is high,
they should be merged into existing common components
instead of creating duplicate canonical groups.

# ============================================================
# 5. CONCLUSION
# ============================================================

QuickForecast contributes additional reusable component candidates,
but does not replace the existing cross-application reference matrix.

These candidates should be reviewed
for promotion into the canonical common-component set
after cross-application validation.

# ============================================================
