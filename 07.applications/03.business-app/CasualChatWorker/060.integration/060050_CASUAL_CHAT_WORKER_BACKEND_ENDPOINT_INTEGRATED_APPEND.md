# CasualChatWorker WorkerRentalCore Backend Endpoint Integrated Append

status: active
phase: Phase P
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

After WorkerRentalCore DB apply, CasualChatWorker prepares backend endpoint skeletons.

This does not switch frontend to real mode yet.

## 2. Current Safe Mode

- frontend remains mock mode
- backend skeleton exists
- read-only DB snapshot exists
- real mode remains gated

## 3. Required Before Real Mode

- WorkerRentalCore DB snapshot PASS
- backend endpoints implemented
- auth/session policy implemented
- endpoint tests PASS
- payload gap check PASS

