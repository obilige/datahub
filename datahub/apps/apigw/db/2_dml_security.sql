-- Service 등록
INSERT INTO apigw.service(service_id,name,description,communication_method,address,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('DH-SECURITY-MANAGER', 'DH-SECURITY-MANAGER','DH-SECURITY-MANAGER','001','10.0.0.231:30000','Y',now(),NULL,'KETI',NULL);

-- Routing Rule 등록 (API-GW -> Security 모듈)
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-01', 'SEC-01','SEC-01','DH-SECURITY-MANAGER','N','{Security_Admin,System_Admin}','/oauth2.0/authorize','GET','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-02', 'SEC-02','SEC-02','DH-SECURITY-MANAGER','N','{Security_Admin,System_Admin}','/oauth2.0/token','POST','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-03', 'SEC-03','SEC-03','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/applications','POST','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-04', 'SEC-04','SEC-04','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/applications','GET','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-05', 'SEC-05','SEC-05','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/applications/{applicationId}','GET','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-06', 'SEC-06','SEC-06','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/applications/{applicationId}','PATCH','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-07', 'SEC-07','SEC-07','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/applications/{applicationId}','DELETE','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-08', 'SEC-08','SEC-08','DH-SECURITY-MANAGER','N','{Security_Admin,System_Admin}','/security/users','POST','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-09', 'SEC-09','SEC-09','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/users','GET','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-10', 'SEC-10','SEC-10','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/users/{userId}','GET','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-11', 'SEC-11','SEC-11','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/users/{userId}','PATCH','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-12', 'SEC-12','SEC-12','DH-SECURITY-MANAGER','Y','{Security_Admin,System_Admin}','/security/users/{userId}','DELETE','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-13', 'SEC-13','SEC-13','DH-SECURITY-MANAGER','N','{Security_Admin,System_Admin}','/security/logout','POST','1','Y',now(),NULL,'KETI',NULL);
INSERT INTO apigw.routing_rule(routing_rule_id,name,description,target_service_id,authorization_yn,authorization_role_ids,new_path,method,rule_order,use_yn,creation_time,modification_time,creator_id,modifier_id) VALUES('SEC-14', 'SEC-14','SEC-14','DH-SECURITY-MANAGER','N','{Security_Admin,System_Admin}','/security/publickey','GET','1','Y',now(),NULL,'KETI',NULL);

-- API Endpoint 등록 (외부->API-GW)
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-01', 1,'/oauth2.0/authorize','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-02', 1,'/oauth2.0/token','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-03', 1,'/security/applications','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-04', 1,'/security/applications','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-05', 1,'/security/applications/{applicationId}','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-06', 1,'/security/applications/{applicationId}','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-07', 1,'/security/applications/{applicationId}','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-08', 1,'/security/users','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-09', 1,'/security/users','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-10', 1,'/security/users/{userId}','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-11', 1,'/security/users/{userId}','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-12', 1,'/security/users/{userId}','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-13', 1,'/security/logout','000','','000',NULL);
INSERT INTO apigw.routing_rule_detail(routing_rule_id,routing_rule_detail_sequence,attribute_value,type,attribute_name,attribute_operation,logical_operation) VALUES('SEC-14', 1,'/security/publickey','000','','000',NULL);