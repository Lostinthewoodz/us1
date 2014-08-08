class AddAgentOptionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sabre, :boolean, default:false
    add_column :users, :nongds, :boolean, default:false
  end
end
