class Blorgh::Article < ActiveRecord::Base
  include Blorgh::Concerns::Article

  def summary
    "#{title} - #{text}"
  end
end