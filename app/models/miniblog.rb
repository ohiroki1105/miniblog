class Miniblog < ApplicationRecord
    validates :text, presence: true
end
