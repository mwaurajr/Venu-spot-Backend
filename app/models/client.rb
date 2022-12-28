class Client < ApplicationRecord
    validates :terms_of_service, acceptance: true
    has_many :reviews
end
