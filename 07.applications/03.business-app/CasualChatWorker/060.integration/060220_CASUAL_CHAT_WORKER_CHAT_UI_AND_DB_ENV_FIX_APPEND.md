# CasualChatWorker Chat UI and DB Env Fix Append

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. DB Env Fix

DATABASE_URL may exist in the Termux environment for ERP work.

CasualChatWorker / WorkerRentalCore must not fail merely because DATABASE_URL exists.

Correct rule:

- do not unset DATABASE_URL globally
- do not use DATABASE_URL for CasualChatWorker DB work
- use PERSONA_DATABASE_URL explicitly
- DB target is Persona-side DB

## 2. UI Canon

CasualChatWorker is a chat app for talking with a selected favorite robot.

v1 UI canon:

- Persona / robot display
- LINE-style chat bubbles
- remaining contract time
- Friend / Lover display
- quick topic buttons

v1.1 candidate:

- dating-simulation-style Persona scene mode
