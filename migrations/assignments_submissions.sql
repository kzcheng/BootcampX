CREATE TABLE assignments (
  id serial PRIMARY KEY NOT NULL,
  name varchar(255),
  content text,
  day integer,
  chapter integer,
  duration integer
);

CREATE TABLE assignment_submissions (
  id serial PRIMARY KEY NOT NULL,
  assignment_id integer REFERENCES assignments (id) ON DELETE CASCADE,
  student_id integer REFERENCES students (id) ON DELETE CASCADE,
  duration integer,
  submission_date date
);

