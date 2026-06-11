-- 팀 테이블
create table teams(
	id int primary key,
	team varchar(100) not null,
	city varchar(100) not null
);
select * from teams;

-- 선수 테이블
create table players(
	id int primary key,
	team_id int references teams(id),
	player varchar(100) not null,
	role varchar(100) not null
);
select * from players;

INSERT INTO teams (id, team, city)
VALUES
    (1, 'Lions', 'Rome'),
    (2, 'Owls', 'Oslo'),
    (3, 'Bears', 'Bern'),
    (4, 'Sharks', 'Lima');

INSERT INTO players (id, team_id, player, role)
VALUES
    (1, 1, 'Ava', 'Guard'),
    (2, 1, 'Noah', 'Wing'),
    (3, 2, 'Emma', 'Back'),
    (4, NULL, 'Liam', 'Guard'),
    (5, NULL, 'Mia', 'Wing');

--inner join(완벽 일치)
select
	t.id, t.team, t.city,
	p.id, p.player, p.role
from teams t
inner join players p
	on t.id = p.team_id;

--left join
select
	t.id, t.team, t.city,
	p.id, p.player, p.role
from teams t
left join players p
	on t.id = p.team_id;

--right join
select
	t.id, t.team, t.city,
	p.id, p.player, p.role
from teams t
right join players p
	on t.id = p.team_id;

--full outer join (왼쪽 + 오른쪽)(= full join)
select
	t.id, t.team, t.city,
	p.id, p.player, p.role
from teams t
full outer join players p
	on t.id = p.team_id;

--full join (full outer join + where절 id가 null인 데이터만 출력)
select
	t.id, t.team, t.city,
	p.id, p.player, p.role
from teams t
full join players p
	on t.id = p.team_id
where t.id is null or p.id is null;
