class QuickStand < ActiveRecord::Base
  attr_accessible :blockers, :developer, :did_yesterday, :do_today, :email, :notes, :rating, :created_at
    validates_inclusion_of :rating,
    :in => 1..3, :message => "must be between 1 and 3"
end
