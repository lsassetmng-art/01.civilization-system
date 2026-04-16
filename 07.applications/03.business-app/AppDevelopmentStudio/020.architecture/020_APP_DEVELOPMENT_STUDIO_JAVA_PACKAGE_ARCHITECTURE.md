# ============================================================
# APP DEVELOPMENT STUDIO JAVA PACKAGE ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines the Java package split for MVP implementation.

package_root:
com.lsam.appdevelopmentstudio

recommended_package_groups:
- app
- api
- application
- domain
- infrastructure
- ui
- shared

application_layer_examples:
- request
- readiness
- proposal
- review
- apply
- sql
- git
- bug
- progress
- settings

principles:
- feature-oriented first
- DTO / service / repository / controller split inside feature when needed
- policy and runtime decision logic should be isolated from UI
