LOGGING MODEL

Logging captures execution evidence and diagnostic context.

Logs should be structured and machine-readable
whenever possible.

Useful log dimensions include:

timestamp
component
operation stage
request or event id
result
error category
duration

Logs are not merely debugging output.
They form part of the system observability layer.

Logging must avoid:

hidden meaning
inconsistent field naming
missing context
unbounded noise

Critical system paths must produce
reliable and searchable logs.
