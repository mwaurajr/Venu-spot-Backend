class ManagersController < ApplicationController

    def index
        manager = Manager.all
        render json: manager, status: :ok
    end

    def show
    manager = Manager.find_by(id: params[:id])
    if user
        render json: manager, status: :ok
    else
        render json: {error: "Manager not found"}, status: :not_found
    end
  end

  def create
    manager = Manager.create(manager_params)
    if manager.valid?
        render json: manager, status: :created
    else
        render json: {error: "Invalid name or password"}, status: :unprocessable_entity
    end
  end

  def destroy
     manager = Manager.find(params[:id])
        manager.destroy
        head :no_content
  end

  private

  def manager_params
    params.permit(:name, :age, :address, :phone, :email)
  end
end
