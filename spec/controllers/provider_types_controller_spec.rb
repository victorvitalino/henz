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

RSpec.describe ProviderTypesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ProviderType. As you add validations to ProviderType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProviderTypesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all provider_types as @provider_types" do
      provider_type = ProviderType.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:provider_types)).to eq([provider_type])
    end
  end

  describe "GET #show" do
    it "assigns the requested provider_type as @provider_type" do
      provider_type = ProviderType.create! valid_attributes
      get :show, {:id => provider_type.to_param}, valid_session
      expect(assigns(:provider_type)).to eq(provider_type)
    end
  end

  describe "GET #new" do
    it "assigns a new provider_type as @provider_type" do
      get :new, {}, valid_session
      expect(assigns(:provider_type)).to be_a_new(ProviderType)
    end
  end

  describe "GET #edit" do
    it "assigns the requested provider_type as @provider_type" do
      provider_type = ProviderType.create! valid_attributes
      get :edit, {:id => provider_type.to_param}, valid_session
      expect(assigns(:provider_type)).to eq(provider_type)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ProviderType" do
        expect {
          post :create, {:provider_type => valid_attributes}, valid_session
        }.to change(ProviderType, :count).by(1)
      end

      it "assigns a newly created provider_type as @provider_type" do
        post :create, {:provider_type => valid_attributes}, valid_session
        expect(assigns(:provider_type)).to be_a(ProviderType)
        expect(assigns(:provider_type)).to be_persisted
      end

      it "redirects to the created provider_type" do
        post :create, {:provider_type => valid_attributes}, valid_session
        expect(response).to redirect_to(ProviderType.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved provider_type as @provider_type" do
        post :create, {:provider_type => invalid_attributes}, valid_session
        expect(assigns(:provider_type)).to be_a_new(ProviderType)
      end

      it "re-renders the 'new' template" do
        post :create, {:provider_type => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested provider_type" do
        provider_type = ProviderType.create! valid_attributes
        put :update, {:id => provider_type.to_param, :provider_type => new_attributes}, valid_session
        provider_type.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested provider_type as @provider_type" do
        provider_type = ProviderType.create! valid_attributes
        put :update, {:id => provider_type.to_param, :provider_type => valid_attributes}, valid_session
        expect(assigns(:provider_type)).to eq(provider_type)
      end

      it "redirects to the provider_type" do
        provider_type = ProviderType.create! valid_attributes
        put :update, {:id => provider_type.to_param, :provider_type => valid_attributes}, valid_session
        expect(response).to redirect_to(provider_type)
      end
    end

    context "with invalid params" do
      it "assigns the provider_type as @provider_type" do
        provider_type = ProviderType.create! valid_attributes
        put :update, {:id => provider_type.to_param, :provider_type => invalid_attributes}, valid_session
        expect(assigns(:provider_type)).to eq(provider_type)
      end

      it "re-renders the 'edit' template" do
        provider_type = ProviderType.create! valid_attributes
        put :update, {:id => provider_type.to_param, :provider_type => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested provider_type" do
      provider_type = ProviderType.create! valid_attributes
      expect {
        delete :destroy, {:id => provider_type.to_param}, valid_session
      }.to change(ProviderType, :count).by(-1)
    end

    it "redirects to the provider_types list" do
      provider_type = ProviderType.create! valid_attributes
      delete :destroy, {:id => provider_type.to_param}, valid_session
      expect(response).to redirect_to(provider_types_url)
    end
  end

end
