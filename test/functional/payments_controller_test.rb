require 'test_helper'

class PaymentsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get payment_pdf" do
    get :payment_pdf
    assert_response :success
  end

  test "should get next_step" do
    get :next_step
    assert_response :success
  end

  test "should get thankyou" do
    get :thankyou
    assert_response :success
  end

end
