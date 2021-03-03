select
	s.stack_name as name,
	r.route_name as route,
	l.language_name as language
from
	stacks as s
join routes as r on s.route_id = r.route_id
join stack_schemas as sch on s.stack_id = sch.stack_id
join languages as l on sch.language_id = l.language_id
ORDER BY s.stack_name
;

 
-- React TS + JS


-- 2 - b
-- 3 - c
-- 1 - d + a

select
	s.stack_name,
	array_agg(l.language_name) as languages
from
	stacks as s
left join
	stack_schemas as sch
	on s.stack_id = sch.stack_id
left join
	languages as l
	on sch.language_id = l.language_id

group by s.stack_name
;

select
	count(s.stack_name),
	l.language_name
from
	stacks as s
join
	stack_schemas as sch
	on s.stack_id = sch.stack_id
join
	languages as l
	on sch.language_id = l.language_id
group by
	l.language_name
;

select
	s.stack_name
from
	stacks as s

where s.route_id = (select max(route_id) from stacks)
;
