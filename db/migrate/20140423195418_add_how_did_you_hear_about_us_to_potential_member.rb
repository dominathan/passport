class AddHowDidYouHearAboutUsToPotentialMember < ActiveRecord::Migration
  def change
    add_column :potential_members, :how_did_you_hear, :text
  end
end
