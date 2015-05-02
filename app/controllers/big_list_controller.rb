class BigListController < ApplicationController
  def index
    @all_sites_count = WebSite.count
    @first_site = WebSite.first
  end
end
