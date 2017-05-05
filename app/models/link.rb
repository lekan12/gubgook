class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
	belongs_to :category
	
def self.keyword_search (keywords)
		 keywords = "%" + keywords + "%"
         Link.where("title ILIKE ? OR category_id ILIKE ? OR publisher ILIKE ? OR writer ILIKE ?", keywords, keywords, keywords, keywords)
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


	


