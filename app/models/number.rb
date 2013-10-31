class Number
        include Mongoid::Document

field :number, type: String
field :time, type: String

has_and_belongs_to_many :nusers, class_name:"User", 
        inverse_of: :unumbers

end