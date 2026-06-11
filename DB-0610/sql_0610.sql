select current_database();

-- 테이블생성
create table t(
	message text
);

select * from t;

-- 테이블 데이터 입력
insert into t(message)
VALUES('The rents are now 10% higher than last month'),
      ('The new film will have _ in the title');

select * from t
where message like '%10$%%' escape '$';

select null = null as result;

select address, address2
from address
where address2 is null;

select address, address2
from address
where address2 is not null;

select * from address;