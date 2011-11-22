class Vendor < ActiveRecord::Base
  attr_accessible :user,:lgl_nm,:first_nm,:last_nm,:classification,:Tin,:Tin_Typ,
    :lgl_addr1,:lgl_addr2,:state,:city,:country,:zip,:primay_acct,:pnt_acct 
    
    validates :lgl_name , :presence=>true , :length=>{ :maximum => 30 }
    validates :first_name , :presence=>true , :length=>{ :maximum => 30 }
    validates :last_name , :presence=>true , :length=>{ :maximum => 30 }
end
