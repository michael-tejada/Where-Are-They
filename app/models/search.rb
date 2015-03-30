class Search 

	extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

	attr_accessor :keyword

	def get_cast(keyword)
		#this is where we are going to take the keyword and pass it into whatever methods we write to call the API
		keyword
	end


end