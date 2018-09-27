require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, 'sqlite3:pizza.bd'

class Product < ActiveRecord::Base
end


get '/' do
	@products=Product.all
	erb :index			
end

get '/about' do
	erb :about			
end

post '/cart' do
	orders_input=params[:orders]
	@orders=parse_orders_input orders_input
	erb "Orders input : #{@orders.inspect} !!!"			
end

def parse_orders_input orders_input
			s1=orders_input.split(',')
			arr=[]
			s1.each do |s|
				s2=s.split('=')
				s3=s2[0].split('_')
				id=s3[1]
				cnt=s2[1]	
				arr_int=[id,cnt]
				arr.push arr_int
			end
			return arr
end