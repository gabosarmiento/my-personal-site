class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :body, :ideas

  validates_presence_of :name, :email, :body, :ideas
  validates :name, length: { minimum: 2, maximum: 150 }
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :body, length: {minimum: 1, maximum: 10000 }
  validates :ideas, length: {minimum: 1, maximum: 10000 }
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  # Contact Messages are never persisted in the DB http://api.rubyonrails.org/classes/ActiveModel/Conversion.html
  def persisted?
    false
  end

end