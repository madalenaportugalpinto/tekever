class TransactionsController < ApplicationController
  def update
    transaction = Transaction.find(params[:id])
    user = transaction.user

    if transaction.status == 'pending'
      transaction.update(status: 'executed')
      user.update(balance: user.balance + transaction.amount)
    end

    render json: transaction, include: {user: {only: [:balance]}}
  end
end
