# AICompanyManager Phase ZH-ZK final payload role-compatible model normalizer roadmap

## Current state
- President payload: OK.
- Leader payload: OK.
- Worker payload: OK.
- Manager payload still resolves to Leader / HD-R4.

## This phase
- Do not rely on select/guard intermediate state.
- Normalize the robot immediately before payload construction.
- Manager allows only HD-R5, BYD2-002, BYD2-003.
- Leader / HD-R4 is rejected for Manager.
- No DB write.
