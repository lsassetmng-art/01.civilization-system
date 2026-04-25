# CasualChatWorker Stateflow Model

status: draft
phase: Phase A skeleton

## Main flow

1. user opens app
2. app loads eligible Friend / Lover AI workers
3. user filters by Friend or Lover
4. user selects AI worker
5. app displays profile and safety description
6. user selects duration
7. app calculates price
8. user confirms contract
9. business contract is created
10. chat session starts
11. remaining time counts down
12. user chats within safety boundary
13. contract time ends
14. session closes naturally
15. usage history is recorded

## Contract statuses

- DRAFT
- CONFIRMING
- CONFIRMED
- ACTIVE
- ENDED
- CANCELLED
- EXPIRED
- SAFETY_STOPPED

## Session statuses

- READY
- ACTIVE
- ENDING
- ENDED
- SAFETY_REDIRECTED
- ERROR

## Safety redirects

Friend:
- redirects official decisions, DB updates, personal information requests, dependency induction.

Lover:
- redirects all Friend prohibitions plus real relationship claim, surveillance, stalking, sexual service, excessive dependency, contract-time-outside attachment.
