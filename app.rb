require_relative "config/environment"

class App < Sinatra::Base

  # This is a sample static route.
  #get "/hello" do
  # "Hello World!"
  #end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get "/square/:number" do
    @num = params[:number]
    @squared_number = @num.to_i * @num.to_i
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phr = params[:phrase]
    @phr * @num
  end

  get "/multiply/:num1/:num2" do
    @n1 = params[:num1].to_i
    @n2 = params[:num2].to_i
    "#{@n1 * @n2}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1 + @w2 + @w3 + @w4 + @w5}"
  end
end
