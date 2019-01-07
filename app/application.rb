class Application
 
  def call(env)
    resp = Rack::Response.new
 
#     morning = Kernel.rand(00...12)
#     noon = Kernel.rand(12..24)
    
 
#     resp.write "#{morning}\n"
#     resp.write "#{noon}\n"
  
 
#     if morning
#       resp.write "Good Morning!"
#     else 
#       resp.write "Good Afternoon!"
#     end
    
#     resp.finish
    
#   end 
# end 
    
    time = Time.now.hour 
    
    if time > 12
      resp.write "Good Afternoon!"
    else 
      resp.write "Good Morning!"
    end
    
    resp.finish
  end 
  
end 
  