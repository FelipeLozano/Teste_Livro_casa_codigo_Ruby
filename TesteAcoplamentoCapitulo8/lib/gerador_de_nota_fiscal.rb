#encoding: UTF-8
require_relative './nota_fiscal.rb'
require_relative './relogio_do_sistema.rb'
require_relative './tabela.rb'


class GeradorDeNotaFiscal
 # def initialize(acoes, relogio = RelogioDoSistema.new, tabela = Tabela.new)
   # @acoes = acoes
    #@relogio = relogio
    #@tabela = tabela
  #end
  #def initialize(dao,sap)
  #	@dao=dao
  #	@sap=sap
  #end
  #def initialize acoes
  #	@acoes = acoes
  #end
  def initialize(acoes,relogio=RelogioDoSistema.new,tabela=Tabela.new)
  	@acoes=acoes
  	@relogio=relogio
  	@tabela=tabela
  end

  def gera(pedido)
     nf = NotaFiscal.new pedido.cliente,pedido.valor_total * 0.94,@relogio.hoje
     @acoes.each{|acao|acao.executa nf}
     #NfDao.new.persiste nf
     #@dao.persiste nf
     #@sap.ennvia nf 
     #return nf
     nf
  end
end