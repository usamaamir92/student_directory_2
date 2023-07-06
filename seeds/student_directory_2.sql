
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
