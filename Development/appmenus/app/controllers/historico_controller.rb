class HistoricoController < ApplicationController
def historico
    @orders = Order.all
    respond_with(@orders)
end


def index
    @orders = Order.all
   respond_with(@orders)
end
    

end
