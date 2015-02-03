DROP KEYSPACE test;

CREATE KEYSPACE test WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1 };
CREATE TABLE test.kv(key text PRIMARY KEY, value int);

INSERT INTO test.kv(key, value) VALUES ('key1', 1);
INSERT INTO test.kv(key, value) VALUES ('key2', 1);
INSERT INTO test.kv(key, value) VALUES ('key3', 1);
INSERT INTO test.kv(key, value) VALUES ('key4', 1);
INSERT INTO test.kv(key, value) VALUES ('key5', 1);
INSERT INTO test.kv(key, value) VALUES ('key6', 1);
INSERT INTO test.kv(key, value) VALUES ('key7', 1);
INSERT INTO test.kv(key, value) VALUES ('key8', 1);
INSERT INTO test.kv(key, value) VALUES ('key9', 1);
INSERT INTO test.kv(key, value) VALUES ('key0', 1);

SELECT * FROM test.kv;
