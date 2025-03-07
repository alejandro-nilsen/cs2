class User < ApplicationRecord
end
class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
  end
  