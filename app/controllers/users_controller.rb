class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user, include: [:transactions]
  end

  def update
    user = User.find(params[:id])
    user.update(
      name: params[:name] || user.name,
      surname: params[:surname] || user.surname,
      email: params[:email] || user.email,
      phone_number: params[:phone_number] || user.phone_number,
      balance: params[:balance] || user.balance,
    )
    render json: user
  end
end
