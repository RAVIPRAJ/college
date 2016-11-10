require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Admin::ScholarshipsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Admin::Scholarship. As you add validations to Admin::Scholarship, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes)do {
    :name => "MyString",
        :discount => 1,
        :condition => "MyString",
        :details => "MyText",
        :group => FactoryGirl.create(:admin_scholarship_group)
  }end

  let(:invalid_attributes) do{
      :name => "",
      :discount => "",
      :condition => "",
      :details => "",
      :group => ""
  }end
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::ScholarshipsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all admin_scholarships as @admin_scholarships" do
      scholarship = Admin::Scholarship.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:admin_scholarships)).to eq([scholarship])
    end
  end

  describe "GET #show" do
    it "assigns the requested admin_scholarship as @admin_scholarship" do
      scholarship = Admin::Scholarship.create! valid_attributes
      get :show, params: {id: scholarship.to_param}, session: valid_session
      expect(assigns(:admin_scholarship)).to eq(scholarship)
    end
  end

  describe "GET #new" do
    it "assigns a new admin_scholarship as @admin_scholarship" do
      get :new, params: {}, session: valid_session
      expect(assigns(:admin_scholarship)).to be_a_new(Admin::Scholarship)
    end
  end

  describe "GET #edit" do
    it "assigns the requested admin_scholarship as @admin_scholarship" do
      scholarship = Admin::Scholarship.create! valid_attributes
      get :edit, id: scholarship.id
      expect(assigns(:admin_scholarship)).to eq(scholarship)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Admin::Scholarship" do
        expect {
          Admin::Scholarship.create!(valid_attributes)
        }.to change(Admin::Scholarship, :count).by(1)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved admin_scholarship as @admin_scholarship" do
        post :create, params: {admin_scholarship: invalid_attributes}, session: valid_session
        expect(assigns(:admin_scholarship)).to be_a_new(Admin::Scholarship)
      end

      it "re-renders the 'new' template" do
        post :create, params: {admin_scholarship: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do{
          :name => "MyString1",
          :discount => 2,
          :condition => "MyString1",
          :details => "MyText1",
          :group => FactoryGirl.create(:admin_scholarship_group,:name=> "az")
      }end

      it "updates the requested admin_scholarship" do
        scholarship = Admin::Scholarship.create! valid_attributes
        put :update, params: {id: scholarship.to_param, admin_scholarship: new_attributes}, session: valid_session
        scholarship.reload

      end

      it "assigns the requested admin_scholarship as @admin_scholarship" do
        scholarship = Admin::Scholarship.create! valid_attributes
        put :update, params: {id: scholarship.to_param, admin_scholarship: valid_attributes}, session: valid_session
        expect(assigns(:admin_scholarship)).to eq(scholarship)
      end

      it "redirects to the admin_scholarship" do
        scholarship = Admin::Scholarship.create! valid_attributes
        put :update, params: {id: scholarship.to_param, admin_scholarship: valid_attributes}, session: valid_session
        expect(response).to redirect_to(scholarship)
      end
    end

    context "with invalid params" do
      it "assigns the admin_scholarship as @admin_scholarship" do
        scholarship = Admin::Scholarship.create! valid_attributes
        put :update, params: {id: scholarship.to_param, admin_scholarship: invalid_attributes}, session: valid_session
        expect(assigns(:admin_scholarship)).to eq(scholarship)
      end

      it "re-renders the 'edit' template" do
        scholarship = Admin::Scholarship.create! valid_attributes
        put :update, params: {id: scholarship.to_param, admin_scholarship: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested admin_scholarship" do
      scholarship = Admin::Scholarship.create! valid_attributes
      expect {
        delete :destroy, params: {id: scholarship.to_param}, session: valid_session
      }.to change(Admin::Scholarship, :count).by(-1)
    end

    it "redirects to the admin_scholarships list" do
      scholarship = Admin::Scholarship.create! valid_attributes
      delete :destroy, params: {id: scholarship.to_param}, session: valid_session
      expect(response).to redirect_to(admin_scholarships_url)
    end
  end

end