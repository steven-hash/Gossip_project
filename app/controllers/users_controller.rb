class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    @new_user = User.new
  end

  def create
    c = City.new(
    name: params[:name],
    zip_code: params[:zip_code]
    
)
    
    #p params
    #return 
    
    @new_user = User.new(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      description: params[:description],
      email: params[:email],
      age: params[:age],
      city: c
    )
    
    if @new_user.save
      redirect_to users_path, :flash => { :success => "Votre utilisateur a été créé" }
    else
      render 'new'
    end
    
    
  end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end

end
