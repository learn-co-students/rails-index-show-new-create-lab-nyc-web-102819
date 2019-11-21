class CouponsController < ApplicationController

    #index
    def index 
        @coupons = Coupon.all 
    end 

    #show
    def show
        @coupon = Coupon.find(params[:id])
    end 

    #new
    def new
        @coupon = Coupon.new
    end 

    #create
    def create
        @coupon = Coupon.new 
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end 

end 