module Spree
  class Contact < Spree::Base
    has_one_attached :image

    validates :name, :email, :message, presence: true
  end
end