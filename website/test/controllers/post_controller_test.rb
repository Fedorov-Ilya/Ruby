require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test 'можем создать пост' do
    assert (get '/posts/new'), :success
    post '/posts', params: { post: {  title: 'Заголовок тестового поста',
                                      summary: 'Наполнение тестового поста',
                                      body: 'Теги тестового поста' } }
    assert Post.find_by_title('Заголовок тестового поста')
  end

  test 'можем смотреть конкретный пост' do
    assert (get '/posts/show?id=53'), :success # id поста в тестовой БД
  end

  test 'можем смотреть новые посты' do
    assert (get '/posts/new'), :success
  end
end