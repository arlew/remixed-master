class Artist < ActiveRecord::Base
  def full_name
    if middle_name
      "#{first_name} #{middle_name} #{last_name}"
    else
      "#{first_name} #{last_name}"
    end
  end

  def self.active
    where(active: true)
  end
end
