class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    binding.pry
    @coupon.save
    redirect_to @coupon
  end
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
end
