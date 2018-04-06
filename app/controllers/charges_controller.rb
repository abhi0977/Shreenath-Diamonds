class ChargesController < ApplicationController
  def new
    @tPrice = params[:tPrice]
    p @tPrice
  end

def create
  # Amount in cents
  @tPrice = params[:tPrice].to_i
  @amount = @tPrice * 100

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'inr'
  )
  current_user.products.delete_all

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
