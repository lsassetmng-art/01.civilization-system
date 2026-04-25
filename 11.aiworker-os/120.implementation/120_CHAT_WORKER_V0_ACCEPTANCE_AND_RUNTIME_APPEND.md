# AIWorkerOS Chat Worker v0 Acceptance and Runtime Append

## 0. Purpose

This document records the first completed DB-side AI worker runtime test.

The target worker is not a newly invented standalone worker table.
It is a runtime activation of an existing AI worker catalog model.

## 1. Target

- manufacturer_code: helios_dynamics
- series_code: hd_series
- model: HD-R1C / Friend / フレンド
- activation_code: CHAT_WORKER_V0_HD_R1C_FRIEND
- service_code: casual_smalltalk
- runtime_label: 雑談係 v0 / HD-R1C Friend

## 2. Canonical boundary

- AI worker catalog canonical truth: aiworker
- Runtime activation/control: aiworker
- Smalltalk material provider: cx22073jw
- Bridge surface: aiworker.vw_dialog_knowledge_reference
- CommonOS: UI/shared presentation layer only

CX22073JW does not hold AI worker canonical truth.

## 3. Runtime acceptance

The following runtime result is accepted:

- enabled_flag: true
- runtime_state_code: READY
- cx_reference_enabled_flag: true
- read_only_flag: true
- write_disabled_flag: true
- startable_flag: true

## 4. DB runtime objects

Tables:

- aiworker.chat_worker_v0_activation
- aiworker.chat_worker_v0_control_state
- aiworker.chat_worker_v0_allowed_reference
- aiworker.chat_worker_v0_test_prompt

Views:

- aiworker.vw_chat_worker_v0_activation
- aiworker.vw_chat_worker_v0_runtime_context
- aiworker.vw_chat_worker_v0_cx_reference
- aiworker.vw_chat_worker_v0_test_prompt
- aiworker.vw_chat_worker_v0_prompt_context
- aiworker.vw_chat_worker_v0_mock_reply_all

Functions:

- aiworker.fn_chat_worker_v0_set_enabled(boolean)
- aiworker.fn_chat_worker_v0_mock_reply(text)

## 5. Prompt pipeline

The v0 prompt pipeline is:

1. runtime context
2. test prompt
3. scoped CX material
4. prompt_context_json
5. mock reply or future LLM reply

The DB-side mock reply is only a pre-LLM pipeline test.
Actual conversation generation should use prompt_context_json.

## 6. Safety

The v0 worker is limited to casual smalltalk.

Forbidden:

- official decision
- external write
- raw database access
- privileged family access
- destructive action

Restricted input must be redirected.

## 7. Completion state

CHAT_WORKER_V0_DB_SIDE_ACCEPTANCE_PASSED.
