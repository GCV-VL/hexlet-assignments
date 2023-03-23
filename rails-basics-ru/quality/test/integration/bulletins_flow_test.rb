require "test_helper"

class BulletinsFlowTest < ActionDispatch::IntegrationTest
 test 'can open all bulletins page' do
  get root_path

  assert_response :success
  assert_select 'h1', 'Bulletins'
 end

 test 'opens bulletin page' do
  get bulletins_path

  assert_response :success
  assert_select 'h1', 'Bulletins'
 end

 test 'open one static page' do

  get bulletin_path(bulletins)

  assert_response :success
  assert_select 'h1', 'title_1'
 end

end
