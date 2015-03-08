require 'rubygems'
require 'bundler/setup'
require 'boletosimples'
require 'awesome_print'
require 'pry'
require 'dalli'

#############################################################################
# BoletoSimples.configure
#############################################################################

# BoletoSimples.configure do |c|
#   c.environment = :sandbox
#   c.cache = ActiveSupport::Cache.lookup_store(:dalli_store, ['localhost:11211'], namespace: 'boletosimples_client', compress: true)
# end

#############################################################################
# BankBillet.create (error)
#############################################################################

# @bank_billet = BoletoSimples::BankBillet.create({amount: 9.1})
# if @bank_billet.persisted?
#   puts "Sucesso :)"
#   ap @bank_billet.attributes
# else
#   puts "Erro :("
#   ap @bank_billet.response_errors
# end

#############################################################################
# BankBillet.create (success)
#############################################################################

# @bank_billet = BoletoSimples::BankBillet.create({
#   amount: 9.01,
#   description: 'Despesas do contrato 0012',
#   expire_at: '2014-01-01',
#   customer_address: 'Rua quinhentos',
#   customer_address_complement: 'Sala 4',
#   customer_address_number: '111',
#   customer_city_name: 'Rio de Janeiro',
#   customer_cnpj_cpf: '012.345.678-90',
#   customer_email: 'cliente@example.com',
#   customer_neighborhood: 'Sao Francisco',
#   customer_person_name: 'Joao da Silva',
#   customer_person_type: 'individual',
#   customer_phone_number: '2112123434',
#   customer_state: 'RJ',
#   customer_zipcode: '12312-123'
# })
# if @bank_billet.persisted?
#   puts "Sucesso :)"
#   ap @bank_billet.attributes
# else
#   puts "Erro :("
#   ap @bank_billet.response_errors
# end

#############################################################################
# BankBillet.find
#############################################################################

# bank_billet_id = 1
# @bank_billet = BoletoSimples::BankBillet.find(bank_billet_id)
# ap @bank_billet.attributes

#############################################################################
# BankBillet.all
#############################################################################

# @bank_billets = BoletoSimples::BankBillet.all(page: 1, per_page: 2)
# puts "Boletos Retornados: #{@bank_billets.count}"
# puts "Total: #{BoletoSimples.last_request.total}"
# puts "Primeira Página: #{BoletoSimples.last_request.links[:first]}"
# puts "Página Anterior: #{BoletoSimples.last_request.links[:prev]}"
# puts "Próxima Página: #{BoletoSimples.last_request.links[:next]}"
# puts "Última Página: #{BoletoSimples.last_request.links[:last]}"

#############################################################################
# BankBillet.cancel
#############################################################################

# bank_billet_id = 1
# @bank_billet = BoletoSimples::BankBillet.find(bank_billet_id)
# puts "Status Anterior: #{@bank_billet.status}"
# if @bank_billet.cancel
#   puts "Cancelado :)"
# else
#   puts "Erro :)"
#   puts @bank_billet.response_errors
# end
# puts "Status Final: #{@bank_billet.status}"

#############################################################################
# Customer.create (error)
#############################################################################

# @customer = BoletoSimples::Customer.create({person_name: 'Joao Da Silva'})
# if @customer.persisted?
#   puts "Sucesso :)"
#   ap @customer.attributes
# else
#   puts "Erro :("
#   ap @customer.response_errors
# end

#############################################################################
# Customer.create (success)
#############################################################################

# @customer = BoletoSimples::Customer.create({
#   person_name: "Joao da Silva",
#   cnpj_cpf: "782.661.177-64",
#   email: "cliente@bom.com",
#   address: "Rua quinhentos",
#   city_name: "Rio de Janeiro",
#   state: "RJ",
#   neighborhood: "bairro",
#   zipcode: "12312-123",
#   address_number: "111",
#   address_complement: "Sala 4",
#   phone_number: "2112123434"
# })
# if @customer.persisted?
#   puts "Sucesso :)"
#   ap @customer.attributes
# else
#   puts "Erro :("
#   ap @customer.response_errors
# end

#############################################################################
# Customer.find
#############################################################################

# customer_id = 67
# @customer = BoletoSimples::Customer.find(customer_id)
# ap @customer.attributes

#############################################################################
# Customer.all
#############################################################################

# @customers = BoletoSimples::Customer.all(page: 1, per_page: 2)
# puts "Clientes Retornados: #{@customers.count}"
# puts "Total: #{BoletoSimples.last_request.total}"
# puts "Primeira Página: #{BoletoSimples.last_request.links[:first]}"
# puts "Página Anterior: #{BoletoSimples.last_request.links[:prev]}"
# puts "Próxima Página: #{BoletoSimples.last_request.links[:next]}"
# puts "Última Página: #{BoletoSimples.last_request.links[:last]}"

#############################################################################
# Transaction.all
#############################################################################

# @transactions = BoletoSimples::Transaction.all(page: 1, per_page: 2)
# puts "Transações Retornadas: #{@transactions.count}"
# puts "Total: #{BoletoSimples.last_request.total}"
# puts "Primeira Página: #{BoletoSimples.last_request.links[:first]}"
# puts "Página Anterior: #{BoletoSimples.last_request.links[:prev]}"
# puts "Próxima Página: #{BoletoSimples.last_request.links[:next]}"
# puts "Última Página: #{BoletoSimples.last_request.links[:last]}"

#############################################################################
# Extra.userinfo
#############################################################################

# @userinfo = BoletoSimples::Extra.userinfo
# ap @userinfo