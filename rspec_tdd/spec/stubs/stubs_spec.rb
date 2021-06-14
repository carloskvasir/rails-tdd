require 'student'
require 'course'

describe 'Stub' do
  it '#finished?' do
    student = Student.new
    course = Course.new

    allow(student)
      .to receive(:finished?)
      .with(an_instance_of(Course))
      .and_return(true)

    course_finished = student.finished? course

    expect(course_finished).to be_truthy
  end
end
