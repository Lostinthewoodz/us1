class AddAgentOptionsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sabre, :boolean, default:false
    add_column :posts, :nongds, :boolean, default:false
  end
end
