insert into role(id, name) values(1,'ADMIN');
insert into role(id, name) values(2,'SENIOR_MANAGEMENT');
insert into role(id, name) values(3,'FRONT_DESK');

insert into user_account(loginId, password,account_status) values ('prashad', 'cf6d7dcba5c0dceb715a78f662c2da31348e57dbfe775ba5230c12db392467e5','ACTIVE');
insert into user_account(loginId, password,account_status) values ('ravi', '18c43de4137739ba1abe4fbb837663c3ad71b4045fe09c51b209d2d47fb5fdea','ACTIVE');
insert into user_account(loginId, password,account_status) values ('shantala', '153a8365d404f4ec190b5789b6de99e61769bca50fa9cf79e9d76a8599e3af68','ACTIVE');

insert into user_role(user_id, role_id) values('prashad',1);
insert into user_role(user_id, role_id) values('ravi',1);

insert into user(id,user_id,designation,name) values(1,'prashad','Administrator','Prashad');
insert into user(id,user_id,designation,name) values(2,'ravi','Administrator','Ravikant');