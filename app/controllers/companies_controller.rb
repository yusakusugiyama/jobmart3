class CompaniesController < ApplicationController
  def index
    @Companies = Company.all
  end
end
