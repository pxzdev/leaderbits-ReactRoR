# frozen_string_literal: true

# == Schema Information
#
# Table name: user_sent_emails
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)        not null
#  resource_id   :bigint(8)
#  created_at    :datetime         not null
#  resource_type :string
#  type          :string
#  params        :json
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class UserSentLeaderIsSlackingOff < UserSentEmail
  def human_description(*)
    'Leader is slacking off'
  end

  def visible_in_engagement?
    false
  end
end
