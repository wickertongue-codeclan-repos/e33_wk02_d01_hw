class Student

  def initialize(input_name, input_cohort, input_skills, input_favourite_language)
    @name = input_name
    @cohort = input_cohort
    @skills = input_skills
    @favourite_language = input_favourite_language
  end

def get_name
  return name = @name
end

def get_cohort
  return cohort = @cohort
end

def set_name(new_name)
  @name = new_name
end

def set_cohort(new_cohort)
  @cohort = new_cohort
end

def get_skill
  return skill = @skills
end

def get_favourite_language
  favourite_language = @favourite_language
  return "I love #{favourite_language}"
end
end
