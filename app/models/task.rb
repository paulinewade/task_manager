class Task < ApplicationRecord

  belongs_to :category, optional: true
  # optional parameter makes this relationship optional

end
