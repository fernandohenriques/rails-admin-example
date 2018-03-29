RailsAdmin.config do |config|

  config.excluded_models = ["TipoLog", "Log"]

  config.main_app_name = ["Rails Admin", "Example"]

  config.navigation_static_label = "No Meu Site"

  config.navigation_static_links = {
    'Jogo da Velha' => 'https://fernandohenriques.com.br/jogo-da-velha',
  }

  config.model Usuario do
    weight -3
    navigation_icon 'fa fa-user'
    fields :nome, :email, :password, :perfil, :playlist
  end

  config.model Playlist do
    weight -2
    navigation_icon 'fa fa-list-alt'
  end

  config.model Video do
    weight -1
    navigation_icon 'fa fa-video-camera'
  end

  config.model Perfil do
    navigation_icon 'fa fa-address-book'
  end

  config.label_methods << :nome

  config.parent_controller = 'ApplicationController'

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :usuario
  end
  config.current_user_method(&:current_usuario)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
