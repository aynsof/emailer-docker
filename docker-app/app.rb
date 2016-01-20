require 'rubygems'
require 'sinatra'
require 'slim'
require 'pony'
require 'sinatra/activerecord'
require 'pg'

set :bind, '0.0.0.0'

class Email < ActiveRecord::Base
end

get '/' do 
  @emails = Email.all

  slim :index 
end

get '/db' do
  @emails = Email.all

  slim :db
end

post '/' do
  @email =  params[:email]
  @subject = params[:subject]
  @body = params[:body]
  @sender = params[:sender]
  @password = params[:password]

  Email.new do |record|
    record.sender = @sender
    record.recipient = @email
    record.save
  end

  @emails = Email.all

  Pony.mail :to => @email,
            :from => @sender,
            :subject => @subject,
            :body => @body,
            :via => :smtp,
            :via_options => {
            :address => 'smtp.gmail.com',
            :port => 587,
            :enable_starttls_auto => true,
            :user_name => @sender,
            :password => @password,
            :authentication => :plain,
            :domain => 'HELO'
  }

  slim :email

end
