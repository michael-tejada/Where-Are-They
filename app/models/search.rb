class Search 

	extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end


end