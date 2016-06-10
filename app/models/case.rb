class Case < ActiveRecord::Base
  #Attributes for case and its respective entries
  belongs_to :user
  has_many :entries

end
