# frozen_string_literal: true

class CreateEntryVoteCache < ActiveRecord::Migration[5.2]
  def change
    change_table :entries do |t|
      t.integer :cached_votes_total, default: 0
      t.integer :cached_votes_score, default: 0
      t.integer :cached_votes_up, default: 0
      t.integer :cached_votes_down, default: 0
      t.integer :cached_weighted_score, default: 0
      t.integer :cached_weighted_total, default: 0
      t.float :cached_weighted_average, default: 0.0
    end
    # Uncomment this line to force caching of existing votes
    # Entry.find_each(&:update_cached_votes)
  end
end
