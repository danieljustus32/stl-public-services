require 'spec_helper'

RSpec.describe StlPublicServices::Scraper do
	let (:scraper) { StlPublicServices::Scraper.new('./fixtures/target_site.html') }

	describe "scrape_service_info" do

		it "returns an array of hashes that contain service contact info" do
			result = scraper.scrape_service_info('./fixtures/target_site.html')
			expect(result).to be_a_kind_of(Array)
			expect(result[0]).to be_a_kind_of(Hash)
			scraper.scrape_service_info
		end

	end

end