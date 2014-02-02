require 'spec_helper'

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

describe AulasController do

  # This should return the minimal set of attributes required to create a valid
  # Aula. As you add validations to Aula, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "titulo" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AulasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all aulas as @aulas" do
      aula = Aula.create! valid_attributes
      get :index, {}, valid_session
      assigns(:aulas).should eq([aula])
    end
  end

  describe "GET show" do
    it "assigns the requested aula as @aula" do
      aula = Aula.create! valid_attributes
      get :show, {:id => aula.to_param}, valid_session
      assigns(:aula).should eq(aula)
    end
  end

  describe "GET new" do
    it "assigns a new aula as @aula" do
      get :new, {}, valid_session
      assigns(:aula).should be_a_new(Aula)
    end
  end

  describe "GET edit" do
    it "assigns the requested aula as @aula" do
      aula = Aula.create! valid_attributes
      get :edit, {:id => aula.to_param}, valid_session
      assigns(:aula).should eq(aula)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Aula" do
        expect {
          post :create, {:aula => valid_attributes}, valid_session
        }.to change(Aula, :count).by(1)
      end

      it "assigns a newly created aula as @aula" do
        post :create, {:aula => valid_attributes}, valid_session
        assigns(:aula).should be_a(Aula)
        assigns(:aula).should be_persisted
      end

      it "redirects to the created aula" do
        post :create, {:aula => valid_attributes}, valid_session
        response.should redirect_to(Aula.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved aula as @aula" do
        # Trigger the behavior that occurs when invalid params are submitted
        Aula.any_instance.stub(:save).and_return(false)
        post :create, {:aula => { "titulo" => "invalid value" }}, valid_session
        assigns(:aula).should be_a_new(Aula)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Aula.any_instance.stub(:save).and_return(false)
        post :create, {:aula => { "titulo" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested aula" do
        aula = Aula.create! valid_attributes
        # Assuming there are no other aulas in the database, this
        # specifies that the Aula created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Aula.any_instance.should_receive(:update).with({ "titulo" => "MyString" })
        put :update, {:id => aula.to_param, :aula => { "titulo" => "MyString" }}, valid_session
      end

      it "assigns the requested aula as @aula" do
        aula = Aula.create! valid_attributes
        put :update, {:id => aula.to_param, :aula => valid_attributes}, valid_session
        assigns(:aula).should eq(aula)
      end

      it "redirects to the aula" do
        aula = Aula.create! valid_attributes
        put :update, {:id => aula.to_param, :aula => valid_attributes}, valid_session
        response.should redirect_to(aula)
      end
    end

    describe "with invalid params" do
      it "assigns the aula as @aula" do
        aula = Aula.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Aula.any_instance.stub(:save).and_return(false)
        put :update, {:id => aula.to_param, :aula => { "titulo" => "invalid value" }}, valid_session
        assigns(:aula).should eq(aula)
      end

      it "re-renders the 'edit' template" do
        aula = Aula.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Aula.any_instance.stub(:save).and_return(false)
        put :update, {:id => aula.to_param, :aula => { "titulo" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested aula" do
      aula = Aula.create! valid_attributes
      expect {
        delete :destroy, {:id => aula.to_param}, valid_session
      }.to change(Aula, :count).by(-1)
    end

    it "redirects to the aulas list" do
      aula = Aula.create! valid_attributes
      delete :destroy, {:id => aula.to_param}, valid_session
      response.should redirect_to(aulas_url)
    end
  end

end
