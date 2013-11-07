# == Schema Information
#
# Table name: summaries
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Summary < ActiveRecord::Base
end
