require 'spec_helper'

RSpec.describe Scraper do
	
	let (:scraper) { Scraper.new('./fixtures/target_site.html') }
	let (:url) { scraper.url}

	describe "scrape_service_info" do

		it "returns a array of hashes that contain service contact info" do
			
			expect(scraper.scrape_service_info(url)).to be_a_kind_of(Array)
			expect(scraper.scrape_service_info(url)[0]).to be_a_kind_of(Hash)
			scraper.scrape_service_info(url)
		
		end
	
	end

end