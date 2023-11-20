class AddVoiceLanguageToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :voice_language, :string, default: "en-US"
  end
end
