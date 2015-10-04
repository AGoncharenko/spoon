class DesignsController < ApplicationController
  def index
    @designs = SpoonFlower.parse_results
  end

  def show
    @design = find_design(params[:id])
  end
end
