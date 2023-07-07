
-- As a coach
-- So I can get to know all students
-- I want to see a list of students' names.

-- As a coach
-- So I can get to know all students
-- I want to see a list of cohorts' names.

-- As a coach
-- So I can get to know all students
-- I want to see a list of cohorts' starting dates.

-- As a coach
-- So I can get to know all students
-- I want to see a list of students' cohorts.

-- Nouns
-- students,names,cohorts,starting dates

-- | Record          | Properties     |
-- |-----------------|----------------|
-- | cohort          | starting_date  |
-- | student         | name,cohort    |

-- cohorts
-- id: SERIAL
-- name: text
-- starting_date: text

-- students
-- id: SERIAL
-- name: text
-- cohort_id: int

-- One cohort can have many students hence students contains the foreign key

DROP TABLE IF EXISTS students;
DROP SEQUENCE IF EXISTS students_id_seq;
DROP TABLE IF EXISTS cohorts;
DROP SEQUENCE IF EXISTS cohorts_id_seq;


CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name text,
  starting_date date
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text,
  cohort_id int,
  constraint fk_cohort foreign key(cohort_id) references cohorts(id) on delete cascade
);


INSERT INTO cohorts (name, starting_date) VALUES ('July 2023', '01/07/23');
INSERT INTO cohorts (name, starting_date) VALUES ('August 2023', '01/08/23');
INSERT INTO cohorts (name, starting_date) VALUES ('September 2023', '01/09/23');

INSERT INTO students (name, cohort_id) VALUES ('Oli', 1);
INSERT INTO students (name, cohort_id) VALUES ('Usama', 1);
INSERT INTO students (name, cohort_id) VALUES ('Rich', 2);
INSERT INTO students (name, cohort_id) VALUES ('Lydia', 2);
INSERT INTO students (name, cohort_id) VALUES ('Sam', 3);
INSERT INTO students (name, cohort_id) VALUES ('Charlotte', 3);
