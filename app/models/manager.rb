class Manager < ApplicationRecord
    validates :terms_of_service, acceptance: true
end
