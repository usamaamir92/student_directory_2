from lib.cohort import Cohort

"""
Test cohort constructs with correct values
"""
def test_cohort_constructs():
    cohort1 = Cohort(1, "June 2023", "01/06/23")
    assert cohort1.id == 1
    assert cohort1.name == "June 2023"
    assert cohort1.starting_date == "01/06/23"