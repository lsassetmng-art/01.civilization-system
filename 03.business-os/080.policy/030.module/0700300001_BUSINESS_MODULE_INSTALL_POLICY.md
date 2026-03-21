# BUSINESS MODULE INSTALL POLICY

status: canonical
layer: policy
domain: module
owner: Boss
prepared_by: Zero

## RULES
- installable modules must declare install state
- installation prerequisites must be explicit
- failed installation must not leave ambiguous active state
- install history must be traceable
