class Student:
    def __init__(self,id, name, cohort_id):
        self.id = id
        self.name = name
        self.cohort_id = cohort_id

    def __eq__(self, other):
        return self.__dict__ == other.__dict__