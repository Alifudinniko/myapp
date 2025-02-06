class BillingsController < ApplicationController
    # Menampilkan semua billing
    def index
      @billings = Billing.all
    end

    # Menampilkan form untuk membuat billing baru
    def new
      @billing = Billing.new
    end

    # Membuat billing baru
    def create
      @billing = Billing.new(billing_params)
      if @billing.save
        redirect_to @billing, notice: 'Billing berhasil dibuat.'
      else
        render :new
      end
    end

    # Menampilkan satu billing berdasarkan id
    def show
      @billing = Billing.find(params[:id])
    end

    # Menampilkan form untuk mengedit billing
    def edit
      @billing = Billing.find(params[:id])
    end

    # Mengupdate billing
    def update
      @billing = Billing.find(params[:id])
      if @billing.update(billing_params)
        redirect_to @billing, notice: 'Billing berhasil diperbarui.'
      else
        render :edit
      end
    end

    # Menghapus billing
    def destroy
      @billing = Billing.find(params[:id])
      @billing.destroy
      redirect_to billings_url, notice: 'Billing berhasil dihapus.'
    end

    private
    def billing_params
      params.require(:billing).permit(:name, :description, :unit_id)
    end
end

