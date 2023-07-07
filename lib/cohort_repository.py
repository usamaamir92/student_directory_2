from lib.cohort import Cohort
from lib.student import Student

class CohortRepository:
        # We initialise with a database connection
    def __init__(self, connection):
        self._connection = connection

    # Retrieve all artists
    def students_by_cohort(self, cohort):
        rows = self._connection.execute(
            '''SELECT cohorts.id AS cohort_id, cohorts.name, cohorts.starting_date, students.id, students.name from cohorts
            JOIN students ON students.cohort_id = cohorts.id 
            WHERE cohorts.id = %s ''', [cohort])
        students = []
        for row in rows:
            student = Student(row["id"], row["name"], row["cohort_id"])
            students.append(student)
        return students