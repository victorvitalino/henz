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

RSpec.describe DeskSuppliesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # DeskSupplie. As you add validations to DeskSupplie, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DeskSuppliesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all desk_supplies as @desk_supplies" do
      desk_supplie = DeskSupplie.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:desk_supplies)).to eq([desk_supplie])
    end
  end

  describe "GET #show" do
    it "assigns the requested desk_supplie as @desk_supplie" do
      desk_supplie = DeskSupplie.create! valid_attributes
      get :show, {:id => desk_supplie.to_param}, valid_session
      expect(assigns(:desk_supplie)).to eq(desk_supplie)
    end
  end

  describe "GET #new" do
    it "assigns a new desk_supplie as @desk_supplie" do
      get :new, {}, valid_session
      expect(assigns(:desk_supplie)).to be_a_new(DeskSupplie)
    end
  end

  describe "GET #edit" do
    it "assigns the requested desk_supplie as @desk_supplie" do
      desk_supplie = DeskSupplie.create! valid_attributes
      get :edit, {:id => desk_supplie.to_param}, valid_session
      expect(assigns(:desk_supplie)).to eq(desk_supplie)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new DeskSupplie" do
        expect {
          post :create, {:desk_supplie => valid_attributes}, valid_session
        }.to change(DeskSupplie, :count).by(1)
      end

      it "assigns a newly created desk_supplie as @desk_supplie" do
        post :create, {:desk_supplie => valid_attributes}, valid_session
        expect(assigns(:desk_supplie)).to be_a(DeskSupplie)
        expect(assigns(:desk_supplie)).to be_persisted
      end

      it "redirects to the created desk_supplie" do
        post :create, {:desk_supplie => valid_attributes}, valid_session
        expect(response).to redirect_to(DeskSupplie.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved desk_supplie as @desk_supplie" do
        post :create, {:desk_supplie => invalid_attributes}, valid_session
        expect(assigns(:desk_supplie)).to be_a_new(DeskSupplie)
      end

      it "re-renders the 'new' template" do
        post :create, {:desk_supplie => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested desk_supplie" do
        desk_supplie = DeskSupplie.create! valid_attributes
        put :update, {:id => desk_supplie.to_param, :desk_supplie => new_attributes}, valid_session
        desk_supplie.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested desk_supplie as @desk_supplie" do
        desk_supplie = DeskSupplie.create! valid_attributes
        put :update, {:id => desk_supplie.to_param, :desk_supplie => valid_attributes}, valid_session
        expect(assigns(:desk_supplie)).to eq(desk_supplie)
      end

      it "redirects to the desk_supplie" do
        desk_supplie = DeskSupplie.create! valid_attributes
        put :update, {:id => desk_supplie.to_param, :desk_supplie => valid_attributes}, valid_session
        expect(response).to redirect_to(desk_supplie)
      end
    end

    context "with invalid params" do
      it "assigns the desk_supplie as @desk_supplie" do
        desk_supplie = DeskSupplie.create! valid_attributes
        put :update, {:id => desk_supplie.to_param, :desk_supplie => invalid_attributes}, valid_session
        expect(assigns(:desk_supplie)).to eq(desk_supplie)
      end

      it "re-renders the 'edit' template" do
        desk_supplie = DeskSupplie.create! valid_attributes
        put :update, {:id => desk_supplie.to_param, :desk_supplie => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested desk_supplie" do
      desk_supplie = DeskSupplie.create! valid_attributes
      expect {
        delete :destroy, {:id => desk_supplie.to_param}, valid_session
      }.to change(DeskSupplie, :count).by(-1)
    end

    it "redirects to the desk_supplies list" do
      desk_supplie = DeskSupplie.create! valid_attributes
      delete :destroy, {:id => desk_supplie.to_param}, valid_session
      expect(response).to redirect_to(desk_supplies_url)
    end
  end

end
