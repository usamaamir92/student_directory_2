from lib.student import Student

"""
test students constructs with correct values
"""
def test_constructs_student():
    student1 = Student(1, "Usama", 1)
    assert student1.id == 1
    assert student1.name == "Usama"
    assert student1.cohort_id == 1