require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    str = ""
    @str = "#{@num.times {str += @phrase}}"
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @wordone = params[:word1]
    @wordtwo = params[:word2]
    @wordthree = params[:word3]
    @wordfour = params[:word4]
    @wordfive = params[:word5]

    @str = "#{@wordone} #{@wordtwo} #{@wordthree} #{@wordfour} #{@wordfive}."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @numone = params[:number1].to_i
    @numtwo = params[:number2].to_i

    if @op == "add"
      "#{@numone + @numtwo}"
    elsif @op == "subtract"
      "#{@numone - @numtwo}"
    elsif @op == "divide"
      "#{@numone/@numtwo}"
    elsif @op == "multiply"
      "#{@numone * @numtwo}"
    end


  end

end
