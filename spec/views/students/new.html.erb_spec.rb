require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :gender => 1
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input[name=?]", "student[first_name]"

      assert_select "input[name=?]", "student[last_name]"

      assert_select "input[name=?]", "student[phone]"

      assert_select "input[name=?]", "student[email]"

      assert_select "input[name=?]", "student[gender]"
    end
  end
end