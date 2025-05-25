COPY mock_data FROM '/mock_data/MOCK_DATA (1).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA (2).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA (3).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA (4).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA (5).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA (6).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA (7).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA (8).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA (9).csv' DELIMITER ',' CSV HEADER;
COPY mock_data FROM '/mock_data/MOCK_DATA.csv' DELIMITER ',' CSV HEADER;

ALTER TABLE mock_data DROP COLUMN id;
ALTER TABLE mock_data ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE mock_data ADD COLUMN row_num SERIAL;

UPDATE mock_data
SET
    sale_seller_id = NULL,
    sale_customer_id = NULL,
    sale_product_id = NULL;

UPDATE mock_data
SET
    sale_seller_id = row_num,
    sale_customer_id = row_num,
    sale_product_id = row_num;

ALTER TABLE mock_data DROP COLUMN row_num;
