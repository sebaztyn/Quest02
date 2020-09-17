require 'sinatra'
require 'haml'
require 'sinatra/reloader' if development?

sinatra_songs = [
    'Ac-cent-tchu-ate the Positive',
    'Accidents Will Happen',
    'Adeste Fideles',
    'Ad-Lib Blues',
    'An Affair to Remember (Our Love Affair)',
    'After You have Gone',
    'Air For English Horn',
    'Alice Blue Gown',
    'All Alone',
    'All By Myself',
    'All I Do Is Dream of You',
    'All I Need is the Girl',
    'All My Tomorrows',
    'All of Me',
    'All of You',
    'All or Nothing at All',
    'All the Things You Are',
    'All the Way Home',
    'All Through the Day',
    'America the Beautiful'
]
  get '/' do
    sinatra_songs.sample
  end

  get '/birth_place' do
    "December 12, 1915"
  end
  get '/picture' do
    @img_src="https://upload.wikimedia.org/wikipedia/commons/a/af/Frank_Sinatra_%2757.jpg"
    haml :index

  end

  get '/birth_city' do
    "Hoboken, New Jersey, U.S."
  end

  get '/wifes' do
    "Nancy Barbato, Ava Gardner, Mia Farrow, Barbara Marx"
  end
