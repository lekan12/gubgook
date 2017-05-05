class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
	belongs_to :category
	
def self.keyword_search (keywords)
		 keywords = "%" + keywords + "%"
         Link.where("title like ? OR category_id like ? OR publisher like ? OR writer like ?", keywords, keywords, keywords, keywords)
end

def self.order_list(sort_order)
	if sort_order == "newest" || sort_order.blank?
		order(created_at: :desc)
	elsif sort_order == "title"
	    order(title: :asc)
	else 
		order(created_at: :asc)
	end
end
end


	


