class Student < ApplicationRecord
  has_many :teacher_relationships
  has_many :teachers, through: :teacher_relationships, source: :teacher
end
