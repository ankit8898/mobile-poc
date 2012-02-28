class Lop < ActiveRecord::Base
has_draft
validates_presence_of :name,:description
end
