class Performance < ApplicationRecord
  belongs_to :company
  scope :filter_by_days, -> (d) { where("period >= ?", Date.today() - d.days) }
  scope :filter_by_company, -> (company) { where company: company }
end
