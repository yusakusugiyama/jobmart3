class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def edit
  end

  def update
    current_company.update(update_params)
  end

  def show
  end

  private
  def update_params
    params.require(:company).permit(:name)
  end
end
