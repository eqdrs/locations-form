# frozen_string_literal: true

require 'csv'

namespace :locations do
  desc 'Import Luxembourg locations'
  task import: :environment do
    puts 'locations import has been started'

    CSV.foreach('lib/tasks/luxembourg_locations.csv', headers: true) do |location|
      ActiveRecord::Base.transaction do
        Location.create!(
          city: location['localite_nom'],
          street: location['rue_nom'],
          postal_code: location['code_postal'],
          country: 'Luxembourg'
        )
      end
    end

    puts 'locations import has been ended'
  end
end
