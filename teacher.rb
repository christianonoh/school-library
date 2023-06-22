require_relative 'person'

class Teacher < Person
  def initialize(id, age, specialization, name = 'Unknown', parent_permission: true)
    super(id, age, parent_permission, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
