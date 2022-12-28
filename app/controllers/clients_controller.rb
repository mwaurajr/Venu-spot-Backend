class ClientsController < ApplicationController

  def index
    client = Client.all
    render json: client, status: :ok
  end

  def show
    client = Client.find_by(id: params[:id])
    if user
        render json: client, status: :ok
    else
        render json: {error: "Client not found"}, status: :not_found
    end
  end

  def create
    client = Client.create(client_params)
    if client.valid?
        render json: client, status: :created
    else
        render json: {error: "Invalid name or password"}, status: :unprocessable_entity
    end
  end

  def destroy
     client = Client.find(params[:id])
        client.destroy
        head :no_content
  end

  private

  def client_params
    params.permit(:name, :age, :address, :phone, :email)
  end
end
