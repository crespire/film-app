class RollsController < ApplicationController
  before_action :roll, except: [:index]

  def index; end

  def new; end

  def edit; end

  def create; end

  def update; end

  def destroy; end

  def show; end

  protected

  def roll
    @roll ||= Roll.find(params[:id] || params[:roll_id])
  end
end
