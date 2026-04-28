# AICompanyManager Phase YR-YU-R2 preview role canonical robot resolver roadmap

## Current state
- President payload: OK.
- Leader payload: OK.
- Worker payload: OK.
- Manager payload: still blocked because preview accepts legacy local Manager Alpha.

## Previous failure
The previous patch inserted literal "\n" into JavaScript marker text, causing syntax error.

## This phase
- Replace resolver block safely.
- Do not insert literal backslash-n.
- Accept selected robot only when robot_pool_id is UUID and option text contains BusinessOS DB.
- Ignore legacy local selected robot such as aiw-manager-001.
- Resolve from visible existing assignment when available.
- Otherwise resolve from first role-compatible BusinessOS DB robot in STATE.robots.
- No DB write.
