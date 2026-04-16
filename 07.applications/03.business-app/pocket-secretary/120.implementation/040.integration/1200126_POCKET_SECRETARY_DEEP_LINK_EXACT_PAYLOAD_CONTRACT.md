# ============================================================
# POCKET SECRETARY DEEP LINK EXACT PAYLOAD CONTRACT
# ============================================================

status: draft-additive
type: exact-payload-contract
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Fix the exact Deep Link payload contract for PocketSecretary cross-app launch,
including:
- EstimateCreator
- NameCardManager
- auth inheritance related launch context

scope:
- request payload exact contract
- required / optional separation
- invalid / expired behavior
- auth inheritance handoff boundary
- launch success != business success clarification

# ============================================================
# 1. COMMON PRINCIPLE
# ============================================================

common_principles:
- PocketSecretary launches target applications explicitly
- launch contract is fixed by scheme + path + payload
- launch success does not mean business operation success
- auth inheritance does not mean authorization success
- invalid or expired launch context must fail closed
- install guidance must be shown when target app is unavailable
- web fallback is not used in this contract

# ============================================================
# 2. COMMON PAYLOAD SHAPE
# ============================================================

common_request_payload:

  scheme:
    type: string
    required: true

  path:
    type: string
    required: true

  mode:
    type: string
    required: true

  company_context_id:
    type: string
    required: true

  handoff_source:
    type: string
    required: true
    fixed_value:
      - pocket_secretary

  auth_inheritance_context:
    type: object
    required: conditional
    meaning:
      inherited authenticated business context when available

  launch_timestamp:
    type: string
    required: recommended
    meaning:
      timestamp of launch contract generation

  contract_version:
    type: string
    required: recommended
    fixed_value:
      - v1

# ============================================================
# 3. AUTH INHERITANCE CONTEXT
# ============================================================

auth_inheritance_context_shape:

  authenticated_user_id:
    type: string
    required: true

  company_context_id:
    type: string
    required: true

  business_session_id:
    type: string
    required: true

  handoff_source:
    type: string
    required: true
    fixed_value:
      - pocket_secretary

  issued_at:
    type: string
    required: true

  expires_at:
    type: string
    required: true

  context_status:
    type: string
    required: true
    allowed_values:
      - active
      - expired
      - invalid

must_not_inherit:
- unsaved_editor_state
- approval_completed_state
- submission_success_state
- temporary_ui_state

destination_rule:
- destination app must validate context before use
- destination app must perform authorization check independently
- invalid / expired context must fail closed

# ============================================================
# 4. ESTIMATECREATOR CONTRACT
# ============================================================

estimatecreator_contract:

  scheme:
    fixed: estimatecreator

  path:
    fixed: entry

  required_payload:
    - mode
    - company_context_id
    - handoff_source

  optional_payload:
    - customer_reference
    - auth_inheritance_context
    - launch_timestamp
    - contract_version

  mode_allowed_values:
    - estimate_entry
    - sales_memo_entry
    - meeting_memo_entry
    - generic_business_entry

  customer_reference:
    type: string
    required: false
    meaning:
      optional customer lookup or handoff reference

  invalid_behavior:
    - missing required field -> fail closed
    - unknown mode -> fail closed
    - invalid company_context_id -> fail closed
    - invalid auth context -> launch may continue only as unauthenticated flow if explicitly allowed by target policy; otherwise fail closed

# ============================================================
# 5. NAMECARDMANAGER CONTRACT
# ============================================================

namecardmanager_contract:

  scheme:
    fixed: namecardmanager

  path:
    fixed: entry

  required_payload:
    - mode
    - company_context_id
    - handoff_source

  optional_payload:
    - keyword
    - card_id
    - auth_inheritance_context
    - launch_timestamp
    - contract_version

  mode_allowed_values:
    - search
    - new
    - detail
    - related_people
    - related_cases
    - generic_entry

  keyword:
    type: string
    required: false
    meaning:
      optional search keyword handoff

  card_id:
    type: string
    required: false
    meaning:
      optional direct detail reference

  invalid_behavior:
    - missing required field -> fail closed
    - unknown mode -> fail closed
    - invalid company_context_id -> fail closed
    - invalid auth context -> launch may continue only as unauthenticated flow if explicitly allowed by target policy; otherwise fail closed

# ============================================================
# 6. REQUIRED / OPTIONAL FIXING RULE
# ============================================================

required_rule:
required means:
- target app cannot safely interpret launch intent without it

optional_rule:
optional means:
- target app may continue safely without it
- omission must not change contract meaning silently

fixed_required_by_all_targets:
- mode
- company_context_id
- handoff_source

fixed_optional_by_all_targets:
- auth_inheritance_context
- launch_timestamp
- contract_version

# ============================================================
# 7. INVALID / EXPIRED RULE
# ============================================================

invalid_contract_cases:
- missing required payload field
- unsupported scheme/path combination
- mode outside allowed values
- malformed company_context_id
- malformed auth_inheritance_context

expired_contract_cases:
- auth_inheritance_context.expires_at passed
- context_status marked expired

fail_closed_rule:
- invalid launch contract must not be treated as valid
- expired auth context must not be silently accepted
- destination app must not elevate privileges from stale context

allowed_safe_fallback:
- install guidance if app not installed
- local unauthenticated open only if target app explicitly supports it and policy allows it
- otherwise terminate launch flow safely

# ============================================================
# 8. LAUNCH SUCCESS vs BUSINESS SUCCESS
# ============================================================

launch_success_definition:
- target app process/screen opens

business_success_definition:
- target app accepts the intent
- target app validates context
- target app authorizes the user
- target app completes requested business operation

rule:
launch_success must never be interpreted as business_success.

# ============================================================
# 9. INSTALL GUIDANCE CONTRACT
# ============================================================

install_guidance_rule:
- if target app is not installed, PocketSecretary shows install guidance
- current guidance mode may be popup_message
- future guidance may point to store distribution route
- install guidance is outside business success judgment

# ============================================================
# 10. CONTRACT VERSIONING
# ============================================================

contract_version_rule:
- current fixed version: v1
- future changes must be additive or version-bumped
- destination app should reject unknown incompatible major versions

# ============================================================
# 11. EXAMPLE PAYLOADS
# ============================================================

example_estimatecreator_payload:
  scheme: estimatecreator
  path: entry
  payload:
    mode: estimate_entry
    company_context_id: company_001
    handoff_source: pocket_secretary
    customer_reference: customer_abc
    contract_version: v1
    auth_inheritance_context:
      authenticated_user_id: user_001
      company_context_id: company_001
      business_session_id: session_001
      handoff_source: pocket_secretary
      issued_at: 2026-04-11T10:00:00+09:00
      expires_at: 2026-04-11T10:30:00+09:00
      context_status: active

example_namecardmanager_payload:
  scheme: namecardmanager
  path: entry
  payload:
    mode: detail
    company_context_id: company_001
    handoff_source: pocket_secretary
    card_id: card_123
    contract_version: v1
    auth_inheritance_context:
      authenticated_user_id: user_001
      company_context_id: company_001
      business_session_id: session_001
      handoff_source: pocket_secretary
      issued_at: 2026-04-11T10:00:00+09:00
      expires_at: 2026-04-11T10:30:00+09:00
      context_status: active

# ============================================================
# 12. DEFINITION OF CONTRACT FIXED
# ============================================================

contract_is_fixed_when:
- required fields are explicit
- optional fields are explicit
- mode allowed values are explicit
- invalid / expired behavior is explicit
- auth inheritance boundary is explicit
- launch success and business success are explicitly separated

# ============================================================
# 13. NEXT BEST ACTION
# ============================================================

next_best_action:
Fix company secretary front behavior:
- when personal_ai is shown
- when company_ai is shown
- whether switching is explicit
- whether simultaneous presence is allowed

