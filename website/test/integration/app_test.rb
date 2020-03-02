require 'test_helper'

class AppTest < ActionDispatch::IntegrationTest
  test 'не должны получать страницу если не прошли аутентификацию' do
    get '/posts/new'
    assert_redirected_to '/users/sign_in'
  end
    
  test 'должны получать страницу если не прошли аутентификацию' do
    assert (get '/users/sign_in'), :success
    assert (get '/users/sign_up'), :success
  end  
end