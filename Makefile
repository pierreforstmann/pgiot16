MODULES = pg_iot16 pg_heapam
OBJS=pg_iot16.o pg_heapam.o

EXTENSION = pg_iot16
DATA = pg_iot16--0.0.1.sql
PGFILEDESC = "pg_iot - insert-only table access method"

REGRESS_OPTS= --temp-instance=/tmp/5454 --port=5454 --temp-config pg.conf
REGRESS = pg_iot16

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
