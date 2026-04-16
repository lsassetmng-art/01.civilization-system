# ============================================================
# ORDER FLOW OFFICIAL DECISION LOG
# ============================================================

status: draft-decision-log
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Records current top-level decisions already fixed in this design stream.

official_decisions:

  - decision_id: OF-DEC-OFFICIAL-001
    topic:
      - app naming
    decision:
      - use OrderFlow
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-002
    topic:
      - app position
    decision:
      - order execution and delivery coordination front
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-003
    topic:
      - estimate relationship
    decision:
      - estimate and order are separate records
      - same-record promotion is forbidden
      - copy / handoff only
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-004
    topic:
      - platform assumptions
    decision:
      - multilingual
      - multicurrency
      - iPhone
      - Android
      - PC
      - tablet
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-005
    topic:
      - partial handling
    decision:
      - partial shipment allowed
      - partial delivery allowed
      - remaining scope must stay visible
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-006
    topic:
      - ERP stance
    decision:
      - responsibility fixed
      - connection target changes
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-007
    topic:
      - common component scope
    decision:
      - exact common component design handled in separate chat
      - OrderFlow keeps dependency-only references
    status:
      - fixed

  - decision_id: OF-DEC-OFFICIAL-008
    topic:
      - execution posture
    decision:
      - SQL candidates are review-only
      - execution intentionally held
    status:
      - fixed

