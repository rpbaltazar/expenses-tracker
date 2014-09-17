class Registry < ActiveRecord::Base
  default_scope { order('reg_date DESC') }
end
