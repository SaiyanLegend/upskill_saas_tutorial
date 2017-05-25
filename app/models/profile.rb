class Profile < ActiveRecord::Base
    belongs_to :user
    has_attached_file :avatar,
                    :styles => { :medium => "300x300", :thub => "100x100"},
                    :default_url => "/images/:style/missing.png"
    validates_attachement_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end