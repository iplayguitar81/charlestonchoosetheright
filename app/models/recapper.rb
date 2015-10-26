class Recapper < ActiveRecord::Base

  require 'active_support/core_ext/integer/inflections'
  paginates_per 10

require 'csv'
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Recapper.create! row.to_hash

    end

  end

end
