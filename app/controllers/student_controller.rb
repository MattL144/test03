class StudentController < ApplicationController
  def home
  @title = "Student";
    @sub1 = "Courses"
    @sub2 = "About"
    @sub3 = "Degree"

  @link1 = Courses_neural_path;
  @link2 = research_home_path;
  @link3 = research_home_path;

  end

  def research_home_path
  end

  def courses
  end

  def about
  end

  def degree
  end
end
