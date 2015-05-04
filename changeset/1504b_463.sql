﻿INSERT INTO system.version SELECT '1504b' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '1504b');
delete from system.setting where name like 'email-msg-claim%';
delete from system.setting where name like 'email-msg-reg%';
delete from system.setting where name like 'email-msg-user%';
delete from system.setting where name like 'email-msg-pswd-%';
delete from system.config_map_layer_metadata where name_layer = 'claims-orthophoto';
delete from system.config_map_layer where name = 'claims-orthophoto';
delete from system.approle where code in ('AccessCS','ModerateClaim','RecordClaim','ReviewClaim');
delete from system.appuser where id in ('claim-moderator','claim-recorder','claim-reviewer');
delete from system.appgroup where id in ('claim-moderators','claim-reviewers','CommunityMembers','CommunityRecorders');
drop schema opentenure cascade;