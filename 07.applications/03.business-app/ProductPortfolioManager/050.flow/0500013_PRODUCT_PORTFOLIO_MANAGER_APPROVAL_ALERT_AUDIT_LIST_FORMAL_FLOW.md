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
