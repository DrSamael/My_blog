class Employee# < ApplicationRecord
  # has_many :pictures, as: :imageable

  # include ActiveModel::Dirty
  # define_attribute_methods :first_name, :last_name
  #
  # def first_name
  #   @first_name
  # end
  #
  # def first_name=(value)
  #   first_name_will_change!
  #   @first_name = value
  # end
  #
  # def last_name
  #   @last_name
  # end
  #
  # def last_name=(value)
  #   last_name_will_change!
  #   @last_name = value
  # end
  #
  # def save
  #   # метод для сохранения изменений...
  #   changes_applied
  # end

  # include ActiveModel::Validations
  #
  # attr_accessor :name, :last_name
  #
  # validates :name, presence: true
  # validates_format_of :last_name, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i


  # include ActiveModel::Serializers::JSON
  #
  # attr_accessor :name
  #
  # def attributes
  #   {'name' => nil}
  # end




end
