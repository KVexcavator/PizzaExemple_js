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
	erb "cart post test"			
end

def parse_orders_line orders_line
			s1=orders_line.split(',')
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