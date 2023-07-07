from lib.cohort import Cohort
from lib.cohort_repository import CohortRepository
from lib.student import Student


def test_get_all_students_in_cohort(db_connection): # See conftest.py to learn what `db_connection` is.
    db_connection.seed("seeds/student_directory_2.sql") # Seed our database with some test data
    repository = CohortRepository(db_connection) # Create a new ArtistRepository

    students = repository.students_by_cohort(1)
    assert students == [
        Student(1, 'Oli', 1),
        Student(2, 'Usama', 1)
    ]
