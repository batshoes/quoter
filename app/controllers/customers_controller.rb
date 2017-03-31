class CustomersController < ApplicationController
  
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])  
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customer_path(@customer), flash: {notice: "Good one Mum"}
    else
      redirect_to new_customer_path, flash: {error: "Give Jim a Call"}
    end
  end

  private

  def customer_params
    params.require(:customer).permit( :name, :email_address, :contact_number,
                                      :number_after_hours, :occupation, :experience,
                                      :insured_name, :trading_name, :subsidiaries,
                                      :abn, :website, :address_line_1,
                                      :address_line_2, :state, :country, :post_code,
                                      :advice_type, :source, :current_insurer,
                                      :current_broker, :interested_parties,
                                      :expiry_date, :notes)
  end
end
