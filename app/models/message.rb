class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :body, :ideas

  validates :name, :email, :body, :presence => true
  validates :name, length: { minimum: 1, maximum: 50 }
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
  validates :ideas, length: { maximum: 100},  :allow_blank => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  # Message are never persisted in the DB http://api.rubyonrails.org/classes/ActiveModel/Conversion.html
  def persisted?
    false
  end

end