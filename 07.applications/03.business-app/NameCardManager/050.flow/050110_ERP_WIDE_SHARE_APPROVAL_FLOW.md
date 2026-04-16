# ============================================================
# ERP WIDE SHARE APPROVAL FLOW
# ============================================================

status: draft
layer: flow
system: applications
application: NameCardManager
flow: erp_wide_share_approval
owner: Boss
prepared_by: Zero

purpose:
Defines the approval-oriented flow for ERP-wide sharing.

# ============================================================
# 1. FLOW GOAL
# ============================================================

ERP-wide sharing is not a simple share action.
It is a controlled publication path into ERP and may require
approval before publication is completed.

# ============================================================
# 2. PRECONDITIONS
# ============================================================

Before ERP-wide sharing proceeds, the system must verify:

- target name card exists
- target name card is not deleted
- ERP use setting is enabled where required
- required company context is available
- publication policy allows submission
- approval requirement is known

# ============================================================
# 3. FLOW
# ============================================================

1. User selects one or more target name cards.
2. User presses ERP-wide share.
3. System evaluates ERP publication eligibility.
4. System determines whether approval is required.
5. If approval is required:
   - create publication request
   - move state to publish_pending
   - wait for approval result
6. If approval is not required and policy permits:
   - submit publication directly
7. ERP returns publication result.
8. System updates ERP publication state.

# ============================================================
# 4. APPROVAL BRANCH
# ============================================================

Approval required branch:

- request created
- ordinary user cannot force publish
- ordinary user cannot revoke published ERP-wide data
- final publication depends on approval result

Possible approval outcomes:
- approved
- rejected
- returned_for_fix

# ============================================================
# 5. RESULTING STATES
# ============================================================

Possible resulting states:
- not_published
- publish_pending
- published
- publish_failed

# ============================================================
# 6. FAILURE HANDLING
# ============================================================

Failures must remain visible.

Examples:
- missing company context
- missing ERP usage setting
- approval rejection
- ERP publication failure
- transport or application error

