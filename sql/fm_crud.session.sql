CREATE TABLE things(
    id SERIAL PRIMARY KEY,
    body TEXT NOT NULL CHECK(body != ''),
    updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);
INSERT INTO things(body)
VALUES ('test text')
RETURNING *;
UPDATE things
SET bosy = 'new text',
    updated_at = current_timestamp
WHERE id = 1;
DELETE FROM things
WHERE id = 1;
SELECT *
FROM things;