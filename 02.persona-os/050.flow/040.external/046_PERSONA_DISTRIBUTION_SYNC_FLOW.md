# PERSONA DISTRIBUTION SYNC FLOW

status: canonical
layer: flow
domain: external_rights
owner: Boss
prepared_by: Zero

## FLOW
1. release or package change is detected
2. mirrorable distribution metadata is generated
3. sync payload is published
4. external sync target receives metadata
5. sync result is recorded
6. retry is scheduled for failed targets
