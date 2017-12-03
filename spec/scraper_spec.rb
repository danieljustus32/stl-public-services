require 'spec_helper'

RSpec.describe StlPublicServices::Scraper do
	let (:scraper) { StlPublicServices::Scraper.new('./fixtures/target_site.html') }

end