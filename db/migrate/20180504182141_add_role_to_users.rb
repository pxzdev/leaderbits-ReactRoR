# frozen_string_literal: true

class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string, default: "team_member"
  end
end
