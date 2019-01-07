class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now.strftime('%H:%M')

    if time < "12:00"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
