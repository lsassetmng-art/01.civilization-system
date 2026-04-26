# ============================================================
# AICompanyManager Handoff Attachment Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase Y
status: handoff-attachment-canon-created

## 1. Canon

Handoff packages may include additional files, similar to ChatGPT style.

Current mock implementation supports:
- selecting multiple files
- showing attached file list
- recording file name
- recording file size
- recording file type
- including attachment metadata in the handoff oneblock

## 2. Current Boundary

Current local mock does not upload files to a server.

It stores only file metadata in browser state.

For text-like files, future enhancement may add preview/excerpt, but no secret file content should be automatically copied into handoff unless explicitly requested.

## 3. Handoff Types

Supported:
- company_policy
- task
- design_in_progress
- development_in_progress
- delivery_preparation
- issue_fix

## 4. Safety

Do not include:
- service role key
- database URL value
- private credentials
- hidden reasoning
- raw secret files
