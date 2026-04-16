# PERSONA EVENT REJECT FLOW

status: implementation-ready-followup

flow:
1. inbound request received
2. validation fails
3. fixed reject code chosen
4. reject feedback persisted
5. caller receives reject contract

forbidden:
- silent drop
- truth mutation after reject
