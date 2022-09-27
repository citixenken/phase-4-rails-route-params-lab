class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  # handling query params
  # =====================
  def self.search_by_name(name)
    Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%")
  end

end
