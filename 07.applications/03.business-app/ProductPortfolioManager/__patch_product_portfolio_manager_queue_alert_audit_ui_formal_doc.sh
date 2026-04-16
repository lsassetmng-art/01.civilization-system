#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/020.architecture" \
  "$BASE/050.flow" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/020.architecture/0200015_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER APPROVAL ALERT AUDIT LIST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of approval queue,
alert list,
and audit/history list surfaces inside ProductPortfolioManager.

architecture_principles:
- these list surfaces are operational control surfaces, not simple archives
- approval queue must prioritize pending business decisions
- alert list must prioritize attention and follow-up
- audit/history list must prioritize explainability and chronology
- each surface must preserve explicit distinction among state, severity, priority, and authority
- device differences may change density, not operational meaning

# ============================================================
# 1. APPROVAL QUEUE ARCHITECTURAL ROLE
# ============================================================

approval_queue_role:
- surface pending approval work
- support efficient review and decision
- connect approvers to target entity context
- preserve explicit approval state meaning

approval_queue_is_not:
- not a generic inbox for all workflow items
- not a substitute for review session history
- not an edit surface for target authorship

approval_queue_core_dimensions:
- request type
- target entity identity
- requester identity
- approval status
- due timing
- priority/urgency context where available
- navigation to target context

# ============================================================
# 2. ALERT LIST ARCHITECTURAL ROLE
# ============================================================

alert_list_role:
- surface operational attention needs
- support triage and ownership
- connect alerts to product, review, and proposal flows
- preserve distinction between severity and status

alert_list_is_not:
- not a final decision surface
- not a substitute for product detail
- not proof that a business issue is resolved simply because it was acknowledged

alert_list_core_dimensions:
- alert type
- target product identity
- severity
- status
- owner/assignee
- detected time
- due/follow-up context where relevant
- navigation to related product or action context

# ============================================================
# 3. AUDIT/HISTORY LIST ARCHITECTURAL ROLE
# ============================================================

audit_history_list_role:
- surface chronological explainability
- support investigation and accountability
- support filtering by actor, entity, time, and event type
- connect history to live entity context where appropriate

audit_history_list_is_not:
- not a hidden admin-only raw dump by default
- not a business editing surface
- not a substitute for source-of-truth fact storage

audit_history_list_core_dimensions:
- event type
- entity identity
- actor identity
- event time
- before/after summary where meaningful
- linked navigation to related target

# ============================================================
# 4. CROSS-SURFACE RELATION
# ============================================================

cross_surface_relation:
approval_queue:
- decision workload surface

alert_list:
- attention workload surface

audit_history_list:
- explanation and accountability surface

architectural_rule:
These surfaces should be reachable from dashboard and detail contexts
and should connect operators to the next appropriate governed action.

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- prioritize essential columns
- use drill-in for full context
- emphasize explicit next actions

tablet:
- stronger split-view list plus detail patterns
- faster triage and inspection

pc:
- denser columns
- stronger simultaneous filter and context visibility
- stronger analyst-style audit scanning

cross_device_rule:
No device class may hide the difference among
approval status,
alert severity,
alert status,
and audit chronology.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Approval queue, alert list, and audit/history list architecture
in ProductPortfolioManager
must support decision workload,
attention workload,
and explainability workload
as distinct but connected operational surfaces.
EOF

cat <<'EOF' > "$BASE/050.flow/0500013_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_FORMAL_FLOW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER APPROVAL ALERT AUDIT LIST FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across
approval queue,
alert list,
and audit/history list surfaces.

flow_principles:
- approval flow should shorten time from pending request to explicit decision
- alert flow should shorten time from detected signal to meaningful next action
- audit/history flow should shorten time from question to explainable chronology
- navigation should preserve enough context to avoid operator confusion

# ============================================================
# 1. APPROVAL QUEUE FLOW
# ============================================================

approval_queue_flow:
1. open approval queue
2. filter by request type, status, due timing, or target context
3. inspect pending request row
4. open target context
5. review supporting product/proposal/classification/review context
6. decide approved / rejected / sent_back / on_hold
7. return to queue with updated context

inputs:
- approval filters
- queue sorting
- target approval_request_id

outputs:
- explicit approval decision
- reduced pending queue
- preserved decision traceability

# ============================================================
# 2. ALERT LIST FLOW
# ============================================================

alert_list_flow:
1. open alert list
2. filter by severity, status, type, assignee, or target context
3. inspect alert summary row
4. open related product or action context
5. choose next action:
   - acknowledge
   - resolve
   - dismiss where permitted
   - create proposal
   - bring target into review context
6. return to list with updated alert state

inputs:
- alert filters
- target alert_id
- related product context

outputs:
- triaged alert
- explicit next-action linkage
- updated alert state

# ============================================================
# 3. AUDIT/HISTORY LIST FLOW
# ============================================================

audit_history_list_flow:
1. open audit/history list
2. filter by event type, entity, actor, or time range
3. inspect event summary
4. open before/after detail where permitted
5. navigate to related entity or target context
6. continue investigation or return to filtered list

inputs:
- event filters
- target audit_event_id or entity context

outputs:
- explained chronology
- linked entity understanding
- preserved investigation path

# ============================================================
# 4. CONTEXT PRESERVATION RULES
# ============================================================

context_preservation_rules:
- queue/list filters should remain preserved where practical after returning from detail
- moving from alert list to product detail should preserve originating alert intent where practical
- moving from approval queue to target detail should preserve approval context where practical
- moving from audit list to entity detail should preserve audit intent where practical

# ============================================================
# 5. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- approval request already closed by another approver
- alert resolved elsewhere while viewing it
- audit target no longer visible to current role
- stale queue row due to concurrent workflow progression

exception_rules:
- concurrent state changes should remain understandable
- missing or revoked visibility should not leak hidden content
- stale list state should not be mistaken for current truth

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Approval queue,
alert list,
and audit/history list flow
in ProductPortfolioManager
must support efficient operational control
with explicit state meaning,
safe navigation,
and explainable outcomes.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200018_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER APPROVAL ALERT AUDIT LIST REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for
approval queue,
alert list,
and audit/history list surfaces
without entering implementation code.

# ============================================================
# 1. APPROVAL QUEUE REQUIREMENTS
# ============================================================

approval_queue_requirements:
- show pending and other relevant approval statuses
- filter by request_type
- filter by current_status
- filter by due timing
- show requester identity
- show target entity identity
- support navigation to target context
- support explicit decision actions where authorized

required_approval_queue_fields_or_equivalent:
- approval_request_id
- request_type
- target_entity_type
- target_entity_id
- requested_by_user_id
- current_status
- requested_at
- due_at

# ============================================================
# 2. ALERT LIST REQUIREMENTS
# ============================================================

alert_list_requirements:
- show alert rows with severity and status clearly separated
- filter by alert_type_code
- filter by severity_level
- filter by alert_status
- filter by assigned_user_id
- support navigation to product detail
- support alert actions where authorized
- support link into proposal/review context where supported

required_alert_list_fields_or_equivalent:
- alert_id
- portfolio_item_id
- alert_type_code
- severity_level
- alert_status
- detected_at
- resolved_at
- assigned_user_id

# ============================================================
# 3. AUDIT/HISTORY LIST REQUIREMENTS
# ============================================================

audit_history_list_requirements:
- show event rows with event_type and event_at
- show entity context
- show actor context
- support filter by entity_type
- support filter by entity_id
- support filter by event_type
- support filter by actor_user_id
- support date-range filtering
- support navigation to related entity context
- support before/after summary where permitted

required_audit_history_fields_or_equivalent:
- audit_event_id
- entity_type
- entity_id
- event_type
- actor_user_id
- event_at
- source_channel
- before_payload summary where permitted
- after_payload summary where permitted

# ============================================================
# 4. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- distinguish approval status from request type
- distinguish alert severity from alert status
- distinguish audit chronology from current business state
- labels and explanations must be localization-ready
- timestamps should remain understandable to operators

# ============================================================
# 5. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize high-value fields first
- support drill-in for full detail and action

tablet:
- support list plus detail inspection
- support faster triage than phone layout

pc:
- support denser columns and filters
- support quicker analyst/operator workflows

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- cross-device consistent meaning
- no hidden approval shortcuts from queue rows
- no hidden alert resolution assumptions
- no audit-detail leakage beyond allowed visibility
- consistent navigation into governed next actions

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement
approval queue,
alert list,
and audit/history list
as first-class operational-control surfaces
for decisions,
attention management,
and explainability.
EOF

echo "PATCHED: approval/alert/audit list formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/050.flow" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
