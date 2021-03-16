class Team < ApplicationRecord

    has_many :teammates
    has_many :projects


end
