class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_contacts do |t|
      t.string :name
      t.string :email
      t.text :message
      t.attachment :image
      t.timestamps
    end
  end
end
