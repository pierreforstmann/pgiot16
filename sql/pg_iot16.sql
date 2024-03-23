CREATE EXTENSION pg_iot16;
CREATE TABLE pg_iot16_tab (a int) USING pg_iot16;
SELECT * FROM pg_iot16_tab;
INSERT INTO pg_iot16_tab VALUES (1);
SELECT * FROM pg_iot16_tab;
UPDATE pg_iot16_tab SET a = 0 WHERE a = 1;
SELECT * FROM pg_iot16_tab;
DELETE FROM pg_iot16_tab WHERE a = 1;
SELECT * FROM pg_iot16_tab;
--
create table t(c int) using pg_iot16;
create index i on t(c);
insert into t select generate_series(1, 1000000);
delete from t;
update t set c=3 where c=999999;
select * from t where c = 555555;

-- ALTER TABLE SET ACCESS METHOD
ALTER TABLE pg_iot16_tab SET ACCESS METHOD heap;
SELECT * FROM pg_iot16_tab;
update pg_iot16_tab set a=1;

-- Clean up
DROP TABLE pg_iot16_tab;

