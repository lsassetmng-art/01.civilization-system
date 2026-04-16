# ============================================================
# ORDER FLOW DEEPLINK AND SESSION ENTRY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines how OrderFlow is entered through standalone login
or deeplink/session-reuse flow, without designing common components here.

# ============================================================
# 1. supported entry modes
# ============================================================

entry_modes:
  - standalone_entry
  - deeplink_entry

standalone_entry:
  meaning:
    - user enters OrderFlow directly
    - OrderFlow handles its own login/session path

deeplink_entry:
  meaning:
    - user enters OrderFlow from another app such as EstimateCreator
    - existing authenticated context may be reused
    - OrderFlow still performs authorization validation

# ============================================================
# 2. deeplink expectations
# ============================================================

deeplink_expectations:
  required:
    - target route or screen intent
    - source app context
    - business handoff context where relevant
    - session reuse eligibility indicator
  forbidden:
    - raw credential transport
    - skipping authorization validation
    - bypassing tenant/company context validation

# ============================================================
# 3. authorization expectations
# ============================================================

authorization_expectations:
  required_checks:
    - company scope validity
    - actor validity
    - route access validity
    - estimate-origin access validity where relevant
  behavior_on_failure:
    - reject entry
    - show safe failure surface
    - do not auto-create order

# ============================================================
# 4. screen routing examples
# ============================================================

screen_routing_examples:
  - deeplink_to_create_order_from_estimate_screen
  - deeplink_to_existing_order_detail_screen
  - standalone_to_home_screen
  - standalone_to_order_list_screen

# ============================================================
# 5. business rule
# ============================================================

business_rule:
  deeplink convenience must not weaken OrderFlow boundary rules.
  entry convenience is secondary to authorization and traceability.

