# frozen_string_literal: true

# == Schema Information
#
# Table name: progress_report_recipients
#
#  id               :bigint(8)        not null, primary key
#  frequency        :string           not null
#  added_by_user_id :bigint(8)        not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint(8)        not null
#
# Foreign Keys
#
#  fk_rails_...  (added_by_user_id => users.id)
#  fk_rails_...  (user_id => users.id)
#

FactoryBot.define do
  factory :progress_report_recipient do
    association :added_by_user, factory: :user
    user
    frequency { ProgressReportRecipient::Frequencies::ALL.sample }
  end
end
