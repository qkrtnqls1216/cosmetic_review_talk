use review;

select database();

select* from report;

DESCRIBE report;

DELETE FROM list WHERE 피부타입='3';

ALTER TABLE list MODIFY 피부타입 varchar(3);

alter table list add 글번호 text;

alter table list drop num;

alter table list modify 글번호 varchar(100);

update list set 글번호=1 where 글번호=4;
insert into list(글번호,제목,피부타입,사용후기) values(1,'이거 쓰고 생활이 달라짐','건성','항상 겨울철만 되면 얼굴 갈라지고 말이 아니였는데 이거 쓰고 나서부터는 안 건조해요');
desc list;