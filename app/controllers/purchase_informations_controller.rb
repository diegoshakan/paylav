class PurchaseInformationsController < ApplicationController
  require "csv"
  def index
    @purchase_informations = PurchaseInformation.all
    total_purchases(@purchase_informations)
  end

  def import_data
    info_file = purchase_information_params[:document]
    a = read_doc(info_file)
    names = []
    item_descriptions = []
    item_price = []
    purchase_count = []
    merchant_address = []
    merchant_name = []
    count = 1
    j = 0
    while count < (a.size - 1)
      names << a[count][0]
      item_descriptions << a[count][1]
      item_price << a[count][2]
      purchase_count << a[count][3]
      merchant_address << a[count][4]
      merchant_name << a[count][5]
      count += 1
      PurchaseInformation.create(purchaser_name: names[j], item_description: item_descriptions[j], item_price: item_price[j], purchase_count: purchase_count[j], merchant_address: merchant_address[j], merchant_name: merchant_name[j], total_purchase: item_price[j].to_f * purchase_count[j].to_i)
      j += 1
    end
    
    redirect_to purchase_informations_path
  end

  private
    
    def purchase_information_params
      params.require(:purchase_information).permit(:purchaser_name, :item_description, :item_price, :purchase_count, :merchant_address, :merchant_name, :document, :total_purchase)
    end

    def read_doc(info_file)
      CSV.read(info_file, { col_sep: "\t" })
    end

    def set_purchase_information
      @purchase_information = PurchaseInformation.find(params[:id])
    end

    def total_purchases(infos)
      @total = 0
      @purchase_informations.each do |tp|
        @total += tp.total_purchase.round(2)
      end
    end
end
