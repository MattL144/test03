class Movie < ActiveRecord::Base
  has_many :comments, :dependent => :destroy

  validates_presence_of :name, :director, :description, :format
  validates_numericality_of :year, :length, :greater_than => 0
  validates_uniqueness_of :name, :message => "is already used"
  #validates_length_of :format, :maximum => 5, :minimum => 2

  #max_paginates_per 5
  paginates_per 5

  def proper_name
    name.titleize
  end

end
