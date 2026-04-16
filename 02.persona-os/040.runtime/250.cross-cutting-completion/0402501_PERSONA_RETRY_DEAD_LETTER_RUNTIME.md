# PERSONA RETRY DEAD LETTER RUNTIME

status: implementation-ready-followup

retry_runtime:
- retry only retry-safe side effects
- preserve correlation and attempt count
- stop at max attempts
- persist dead-letter evidence

dead_letter_required_fields:
- source_path
- correlation_id
- failure_code
- attempt_count
- dead_lettered_at
