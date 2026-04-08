# ============================================================
# TARGET DOMAIN EXPECTED COUNTS
# 004.mode / 005.story / 006.player / 012.integration
# ============================================================

status: canonical
layer: meta
type: expected-count-spec
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the expected direct-file counts for the target domains.

target_domains:
- 004.mode
- 005.story
- 006.player
- 012.integration

expected_counts:
020.architecture:
- expected_direct_md_files_per_domain: 9

040.runtime:
- expected_direct_md_files_per_domain: 8

050.flow:
- expected_direct_md_files_per_domain: 8

060.integration:
- expected_direct_md_files_per_domain: 8

070.operations:
- expected_direct_md_files_per_domain: 8

080.policy:
- expected_direct_md_files_per_domain: 8

100.security:
- expected_direct_md_files_per_domain: 8

110.infrastructure:
- expected_direct_md_files_per_domain: 8

120.implementation:
- expected_direct_md_files_per_domain: 8

130.development:
- expected_direct_md_files_per_domain: 8

judgement_rule:
A count report matching these values
should be judged structurally correct for the target domains.
