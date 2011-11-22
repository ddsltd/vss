class Address < ActiveRecord::Base
  attr_accessible :ad_typ,:addr1,:addr2,:state,:city,:country,:state,:prim_contact,:email,:phone
end
