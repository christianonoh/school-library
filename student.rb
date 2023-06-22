require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(id, age, classroom, name = 'Unknown', parent_permission: true)
    super(id, age, parent_permission, name)
    @classroom = classroom
    add_to_classroom if classroom
  end

  def add_to_classroom
    classroom&.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
