# FOUNDATION INTEGRATION

status: canonical
layer: integration
domain: foundation

## PURPOSE
Define how foundation contracts are consumed by all higher domains.

## INTEGRATION TARGETS
- canonical IDs
- namespace rules
- boundary ownership
- shared config references

## RULES
- higher domains may read foundation contracts
- higher domains must not mutate foundation rules implicitly
