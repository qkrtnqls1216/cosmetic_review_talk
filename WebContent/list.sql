use review;

select database();

select* from list;

DESCRIBE list;

delete from list1 where 글번호=6;

DELETE FROM list WHERE 피부타입='3';

ALTER TABLE list MODIFY 피부타입 varchar(3);

alter table list add 글번호 text;

alter table list drop num;

alter table list modify 글번호 varchar(100);

update list set 글번호=1 where 글번호=4;
insert into list(글번호,제목,피부타입,사용후기) values(3,'이거 꼭 써줘','복합성','와 진짜 이거쓰고 세상이 달라졌어 다들 이거 써');
desc list;