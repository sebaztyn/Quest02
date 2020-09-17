require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
  haml :home
end

post '/' do
  if params["login"] != "admin" or params['password']!="admin"
    return "401 Not authorized."
  end
  redirect '/protected'
end

get '/protected' do
  'This route is protected'
end

__END__

@@home
%html
  %head
    %title User Inputs
  %body
    %div
    Everybody can see this page
    %form{"method"=>"POST", "action"=>"/"}
      %input{"type"=>"text", "name"=>"login"}
      %input{"type"=>"text", "name"=>"password"}
      %input{"type"=>"submit", "value"=>"submit"}
