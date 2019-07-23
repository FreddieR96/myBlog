class Email < ApplicationRecord
validates :emailstring, format: { with: URI::MailTo::EMAIL_REGEXP }
end
