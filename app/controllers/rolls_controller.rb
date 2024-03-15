class RollsController < AuthenticatedController
  before_action :roll, except: %i[index new create]

  def index; end

  def new
    @roll = Roll.new
  end

  def edit; end

  def create
    @roll = Roll.new(roll_params)
  end

  def update; end

  def destroy; end

  def show; end

  protected

  def roll
    @roll ||= Roll.find(params[:id] || params[:roll_id])
  end

  def roll_params
    params.require(:roll).permit(:camera, :film_name, :film_speed, :status, :film_type, :notes)
  end
end
