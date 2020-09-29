class AddPasswordDigestToSocialWorkers < ActiveRecord::Migration[6.0]
  def change
    add_column :social_workers, :password_digest, :string
  end
end
