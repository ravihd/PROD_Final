class Book < ActiveRecord::Base

validates :bookname, presence: true

end
