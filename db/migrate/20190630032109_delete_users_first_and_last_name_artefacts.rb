# frozen_string_literal: true

class DeleteUsersFirstAndLastNameArtefacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
