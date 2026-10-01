# AICompanyManager V10L-C2/C3 execution unlock precheck canon

## 1. Status

This document fixes the precheck requirements before enabling Yes execution for:

- C2: 課長へ送る execution unlock
- C3: 削除 / archive execution unlock

Current status:

- DB_WRITE: NO
- API_POST: NO
- This document is pre-execution canon only.

## 2. C2: 課長へ送る execution unlock requirements

C2 must require:

1. Confirmation UI already exists.
2. Selected major item IDs are available.
3. Selected rows are loaded from current context or API response.
4. Each selected row is still eligible.
5. Target Leader / section is clear.
6. If target Leader is missing, stop and show validation message.
7. If multiple Leaders are possible, require explicit Leader selection before write.
8. API endpoint and payload are fixed before execution.
9. DB write behavior is reviewed by Sato(DB担当).
10. Yes execution must POST only after final user confirmation.

Required confirmation display:

対象大項目:
- title list

引き渡し先:
- department
- section
- Leader label / Leader placement

## 3. C3: 削除 / archive execution unlock requirements

C3 must require:

1. Confirmation UI already exists.
2. Selected major item IDs are available.
3. Selected rows are loaded from current context or API response.
4. Delete must be soft delete / archive unless explicitly approved otherwise.
5. DB hard delete is forbidden unless a separate destructive-operation approval is created.
6. API endpoint and payload are fixed before execution.
7. DB write behavior is reviewed by Sato(DB担当).
8. Yes execution must POST only after final user confirmation.

Required confirmation display:

削除対象:
- title list

削除方式:
- archive / soft delete

## 4. Forbidden before C2/C3 approval

Do not:

- Enable DB write silently
- Enable API POST silently
- Write direct SQL from browser UI
- Add server route without route canon
- Reintroduce DOM afterpatch / setInterval / MutationObserver UI hacks
- Mix table renderer and card renderer patches
- Use ambiguous Leader routing
- Hard delete major items without explicit destructive approval

## 5. Recommended next phases

C1I:
- Routing/granularity canon checkpoint
- DB_WRITE=NO
- API_POST=NO

C2A:
- Read-only route/API/payload investigation for 課長へ送る
- DB_WRITE=NO
- API_POST=NO

C2B:
- Payload exact canon and validation UI
- DB_WRITE=NO
- API_POST=NO

C2C:
- Sato DB review and dry-run plan
- DB_WRITE=NO or controlled test only

C2D:
- 課長へ送る execution unlock
- DB_WRITE=YES
- API_POST=YES
- final user confirmation required

C3A-C3D:
- Same sequence for delete/archive
