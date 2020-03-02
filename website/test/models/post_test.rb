require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'не должен сохранятьcя пост c заполненными полями' do
    assert Post.create(title: 'tt', summary: 'tt', body: '0').valid?
    assert Post.create(title: 'tt',   summary: nil, body: '0').invalid?, '2'
    assert Post.create(title: 'tt',   summary: 'tt', body: nil).invalid?, '3'
    assert Post.create(title: nil,   summary: nil, body: '0').invalid?, '4'
    assert Post.create(title: nil,   summary: 'tt', body: nil).invalid?, '5'
    assert Post.create(title: 'tt', summary: nil, body: nil).invalid?, '6'
    assert Post.create(title: nil, summary: nil, body: nil).invalid?, '7'
  end
  
  test 'должен сохранятьcя пост c заполненными полями' do
    assert Post.create(title: 'tt', summary: 'tt', body: '0').valid?
  end

end