class Application

  def call(env)

    resp = Rack::Response.new

    if Time.now.hour > 12
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.finish

  end

end
